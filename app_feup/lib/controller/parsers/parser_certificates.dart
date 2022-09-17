class StudentStub {
  List<Certificate> getStudentCertificates() {
    Certificate c1 = Certificate('Passe sub23@superior.tp', true, false, false);
    Certificate c2 = Certificate('Certidão de Inscrição em Ano Curricular', true, false, false);

    return [c1, c2];
  }
}

class Certificate {
  String name;
  bool requested;
  bool processing;
  bool result;

  Certificate(String n, bool req, bool p, bool res) {
    name = n;
    requested = req;
    processing = p;
    result = res;
  }
}

class CertificateStub{
  List<Certificate> getCertificatesOptions(){
    Certificate c1 = Certificate('Carta de Curso - Grau de Licenciado',
        false, false, false);
    Certificate c2 = Certificate('Certidão de Aproveitamento Escolar',
        false, false, false);
    Certificate c3 = Certificate('Certidão de Grau de Licenciado',
        false, false, false);
    Certificate c4 = Certificate('Certidão de Inscrição em Ano Curricular',
        false, false, false);
    Certificate c5 = Certificate('Certidão de Inscrição em Ano Letivo',
        false, false, false);
    Certificate c6 = Certificate('Certidão de Inscrição em Unidades Curriculares',
        false, false, false);
    Certificate c7 = Certificate('Certidão de Matrícula',
        false, false, false);
    Certificate c8 = Certificate('Certidão de Não Prescrição',
        false, false, false);
    Certificate c9 = Certificate('Certidão de Programas e Cargas Horárias',
        false, false, false);
    Certificate c10 = Certificate('Certidão de Realização de Unidades Curriculares',
        false, false, false);
    Certificate c11 = Certificate('Passe sub23@superior.t', false, false, false);

    return [c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11];
  }

  List<String> getShippingOptions() {
    return ['Correio normal',
            'Correio registado com aviso de receção',
            'Correio registado sem aviso de receção',
            'Levantamento presencial nos serviços'];
  }
}