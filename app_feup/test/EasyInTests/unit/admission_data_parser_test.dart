import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:uni/controller/parsers/parser_admission_data_access.dart';

void main(){
  Student s = Student('Diogo Fonte', '202004175', 'up202004175@edu.fc.up.pt',
                      '1', '170', '148', 'ESDJGFA', 'Secundário', '2', 'LEIC - FEUP');

  group('class Student', () {
    test('Student name should be Diogo Fonte', () {
      expect(s.name, 'Diogo Fonte');
    });

    test('Student number should be 202004175', () {
      expect(s.number, '202004175');
    });

    test('Student email should be up202004175@edu.fc.up.pt', () {
      expect(s.email, 'up202004175@edu.fc.up.pt');
    });
  });

  group('class AdmissionData', () {
    test('Phase should be 1', () {
      expect(s.admissionData.phase, '1');
    });

    test('Apply Average should be 170', () {
      expect(s.admissionData.applyAverage, '170');
    });

    test('High School Average should be 148', () {
      expect(s.admissionData.highSchoolAverage, '148');
    });

    test('High School should be ESDJGFA', () {
      expect(s.admissionData.highSchool, 'ESDJGFA');
    });

    test('Qualifications should be Secundário', () {
      expect(s.admissionData.qualifications, 'Secundário');
    });

    test('Initial Year should be 2', () {
      expect(s.admissionData.initialYear, '2');
    });

    test('First Option should be LEIC - FEUP', () {
      expect(s.admissionData.firstOption, 'LEIC - FEUP');
    });
  });
}