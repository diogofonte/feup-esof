import 'package:uni/controller/networking/network_router.dart';

class ProfileStub {
  CourseStub course = CourseStub();

  String getScoreAverage() {
    return '15.68';
  }

  String getAchievedECTS() {
    return '90';
  }

  String getECTSByRecognition() {
    return '60';
  }

  List<UCStub> getCurrentYearUCs(int semester){
    return course.getCurrentYearUCs(semester);
  }
}

class UCStub {
  String name;
  String code;
  String initials;
  String ects;
  String grade;

  UCStub(String name, String code, String initials, String ects, String grade){
    this.name = name;
    this.code = code;
    this.initials = initials;
    this.ects = ects;
    this.grade = grade;
  }
}

class CourseStub {
  List<UCStub> getCurrentYearUCs(int semester) {
    if(semester == 1) {
      return [
        UCStub('Algoritmos e Estruturas de Dados','L.EIC011', 'AED', '6', '20'),
        UCStub('Base de Dados','L.EIC012', 'BD', '6', '20'),
        UCStub('Física II','L.EIC013', 'F II', '4,5', '20'),
        UCStub('Laboratório de Desenho e Teste de Software','L.EIC014', 'LDTS', '6', '20'),
        UCStub('Teoria de Computação','L.EIC010', 'TCOM', '6', '20'),
      ];
    }
    else if (semester == 2){
      return [
        UCStub('Laboratório de Computadores', 'L.EIC018', 'LC', '6', '20'),
        UCStub('Linguagens e Tecnologias Web', 'L.EIC019', 'LTW', '6', '20'),
        UCStub('Desenho de Algoritmos', 'L.EIC016', 'DA', '6', '20'),
        UCStub('Engenharia de Software', 'L.EIC017', 'ES', '6', '20'),
        UCStub('Sistemas Operativos', 'L.EIC015', 'SO', '6', '20'),
      ];
    }
    else {
      return null;
    }
  }
}

String toUcLink(int n) {
  final String faculty = 'feup'; //should not be hardcoded
  String url = '${NetworkRouter.getBaseUrl(faculty)}'
      'UCURR_GERAL.FICHA_UC_VIEW?pv_ocorrencia_id=';
  switch (n) {
    case 1:
      return url + '484426';
    case 2:
      return url + '484427';
    case 3:
      return url + '484424';
    case 4:
      return url + '484425';
    case 5:
      return url + '484378';
    default:
      return url + 'null';
  }
}
