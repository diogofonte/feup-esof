import 'package:test/test.dart';

import 'package:uni/controller/parsers/parser_statutes_and_regimes.dart';

void main() {
    SchoolYearStub schoolYearStub = new SchoolYearStub();
    final schoolYear = schoolYearStub.getYear();
    StatuteStub statuteStub = new StatuteStub();
    FrequencyRegimeStub frequencyRegimeStub = new FrequencyRegimeStub();

    group('Statutes and Frequency Regimes page stubs', () {
    test('School year should be 2021/2022', () {
      expect(schoolYear, '2021/2022');
    });

    test('Statute name should be Ordinário', () {
      final statute = statuteStub.getStatuteName(schoolYear);
      expect(statute, 'Ordinário');
    });

    test('Statute is valid from 2021-10-13', () {
      final startDate = statuteStub.getStartDate(schoolYear);
      expect(startDate, '2021-10-13');
    });

    test('Statute is valid until 2022-11-30', () {
      final endDate = statuteStub.getEndDate(schoolYear);
      expect(endDate, '2022-11-30');
    });

    test('The statute should not have automatic renewal', () {
      final automaticRenewal = statuteStub.getAutomaticRenewal(schoolYear);
      expect(automaticRenewal, false);
    });

    test('The statute should be anual', () {
      final anual = statuteStub.getAnualStatute(schoolYear);
      expect(anual, true);
    });

    test('The statute should apply to 1st semester', () {
      final firstSem = statuteStub.get1stSemStatute(schoolYear);
      expect(firstSem, true);
    });

    test('The statute should apply to 2nd semester', () {
      final secSem = statuteStub.get2ndSemStatute(schoolYear);
      expect(secSem, true);
    });

    test('The regime dedication should be integral', () {
      final dedication = frequencyRegimeStub.getDedication(schoolYear);
      expect(dedication, 'Tempo integral');
    });

    test('The regime should be in person', () {
      final dedication = frequencyRegimeStub.getPresence(schoolYear);
      expect(dedication, 'Presencial');
    });

    test('The regime schedule should be diurnal', () {
      final schedule = frequencyRegimeStub.getSchedule(schoolYear);
      expect(schedule, 'Diurno');
    });
  });
}