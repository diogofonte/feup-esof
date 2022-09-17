import 'package:flutter/gestures.dart';
import 'package:test/test.dart';

import 'package:uni/controller/parsers/parser_academic_pathway.dart';

void main() {
  group('Academic pathway access page stubs', () {
    ProfileStub profile = ProfileStub();

    test('Average should be equal to "15.68"', () {
      final grade = profile.getScoreAverage();
      expect(grade, '15.68');
    });

    test('Achieved ECTS should be equal to "90"', () {
      final grade = profile.getAchievedECTS();
      expect(grade, '90');
    });

    test('ECTS by recognition should be equal to "60"', () {
      final grade = profile.getECTSByRecognition();
      expect(grade, '60');
    });

    test('Grades should be equal to "20"', () {
      for(int i=0; i<profile.getCurrentYearUCs(1).length; i++) {
        final grade = profile.getCurrentYearUCs(1).elementAt(i).grade;
        expect(grade, '20');
      }
      for(int i=0; i<profile.getCurrentYearUCs(2).length; i++) {
        final grade = profile.getCurrentYearUCs(2).elementAt(i).grade;
        expect(grade, '20');
      }
    });
  });
}


