import 'package:test/test.dart';

import 'package:uni/controller/parsers/parser_improvement_exam_enrollment.dart';

void main() {
  SchoolYearStub schoolYearStub = new SchoolYearStub();
  DateStub dateStub = new DateStub();

  group('Improvement exam enrollment page stubs', () {
    test('Enrolled UCs should be DA, ES, LC, LTW and SO', () {
      final ucs = schoolYearStub.getEnrolledUCs();
      expect(ucs, ['DA', 'ES', 'LC', 'LTW', 'SO']);
    });

    test("There should be 2 exams seasons, 'Recurso' and 'Melhoria'", () {
      final seasons = schoolYearStub.getExamsSeason();
      expect(seasons, ['Recurso', 'Melhoria']);
    });

    test('There should be 31 days to choose from', () {
      final days = dateStub.getDays();
      expect(days.length, 31);
    });

    test('There should be 12 months to choose from', () {
      final months = dateStub.getMonths();
      expect(months.length, 12);
    });

    test('There should be past years and the current one to choose from', () {
      final years = dateStub.getYears();
      expect(years.contains('2022'), true);
    });

    test('There should be past and future years and the current one to choose from', () {
      final schoolYears = dateStub.getSchoolYears();
      expect(schoolYears.contains('2021/2022'), true);
    });
  });
}