import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:uni/controller/parsers/parser_study_plan_position.dart';
import 'package:uni/view/Pages/study_plan_page_view.dart';

void main() {
  UC uc1 = UC('L.EIC001','ALGA', '4,5', '14', "com aprovação");
  UC uc2 = UC('L.EIC028','CPD', '4,5', '-', "não inscrito");
  UC uc3 = UC('L.EIC018','LC', '4,5', '-', "inscrito");
  UC uc4 = UC('L.EIC024','PFL', '6', '17', "acerto de plano");

  group('class UC', () {
    test('Code should be L.EIC001', () {
      expect(uc1.code, 'L.EIC001');
    });

    test('Initial should be ALGA', () {
      expect(uc1.initials, 'ALGA');
    });

    test('Ects should be 4,5', () {
      expect(uc1.ects, '4,5');
    });

    test('Grade should be 14', () {
      expect(uc1.grade, '14');
    });

    test('Grades should be -', () {
      expect(uc2.grade, '-');
      expect(uc3.grade, '-');
    });

    test('State Color should be 3 (com aprovação)', () {
      expect(uc1.stateColor, 3);
    });

    test('State Color should be 1 (não inscrito)', () {
      expect(uc2.stateColor, 1);
    });

    test('State Color should be 2 (inscrito)', () {
      expect(uc3.stateColor, 2);
    });

    test('State Color should be 3 (acerto de plano)', () {
      expect(uc4.stateColor, 3);
    });
  });

  //--------------------------------------------------------------

  List<UC> list1 = [UC('L.EIC011','AED', '4,5', '14', "com aprovação"),
                    UC('L.EIC012','BD', '6', '13', "com aprovação")];
  List<UC> list2 = [UC('L.EIC011','AED', '4,5', '14', "acerto de plano"),
                    UC('L.EIC012','BD', '6', '13', "acerto de plano")];
  List<UC> list3 = [UC('L.EIC018','LC', '4,5', '-', "inscrito"),
                    UC('L.EIC016','DA', '6', '-', "inscrito")];
  List<UC> list4 = [UC('L.EIC018','LC', '4,5', '-', "não inscrito"),
                    UC('L.EIC016','DA', '6', '-', "não inscrito")];
  List<UC> list5 = [UC('L.EIC011','AED', '4,5', '14', "com aprovação"),
                    UC('L.EIC012','BD', '6', '13', "inscrito")];

  group('Heading Color', (){
    //período completo
    test('Heading Color should be Color.fromARGB(255, 130, 163, 99)', () {
      expect(updateHeadingColor(list1), Color.fromARGB(255, 130, 163, 99));
      expect(updateHeadingColor(list2), Color.fromARGB(255, 130, 163, 99));
    });

    //Período por fazer
    test('Heading Color should be Color.fromARGB(255, 180, 176, 81)', () {
      expect(updateHeadingColor(list3), Color.fromARGB(255, 180, 176, 81));
      expect(updateHeadingColor(list4), Color.fromARGB(255, 180, 176, 81));
      expect(updateHeadingColor(list5), Color.fromARGB(255, 180, 176, 81));
    });
  });
}