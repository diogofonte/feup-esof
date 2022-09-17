import 'package:test/test.dart';
import 'package:uni/controller/parsers/parser_certificates.dart';

void main() {
  StudentStub studentStub = StudentStub();
  List<Certificate> studentCertificates = studentStub.getStudentCertificates();

  group('Certificates initial page stubs', () {
    test('Student should have an history with 2 certificate requests', () {
      expect(studentCertificates.length, 2);
    });

    test('Student should have a request for the monthly bus ticket', () {
      expect(studentCertificates[0].name, 'Passe sub23@superior.tp');
    });

    test('Student should have a request for the curricular year enrollment certificate', () {
      expect(studentCertificates[1].name, 'Certidão de Inscrição em Ano Curricular');
    });
  });

  CertificateStub certificateStub = CertificateStub();
  List<Certificate> certificates = certificateStub.getCertificatesOptions();

  group('New certificate options', () {
    test('Certificate option 1 should be equal to the expected', (){
      expect(certificates.elementAt(0).name, 'Carta de Curso - Grau de Licenciado');
      expect(certificates.elementAt(0).requested, false);
      expect(certificates.elementAt(0).processing, false);
      expect(certificates.elementAt(0).result, false);
    });

    test('Certificate option 2 should be equal to the expected', (){
      expect(certificates.elementAt(1).name, 'Certidão de Aproveitamento Escolar');
      expect(certificates.elementAt(1).requested, false);
      expect(certificates.elementAt(1).processing, false);
      expect(certificates.elementAt(1).result, false);
    });

    test('Certificate option 3 should be equal to the expected', (){
      expect(certificates.elementAt(2).name, 'Certidão de Grau de Licenciado');
      expect(certificates.elementAt(2).requested, false);
      expect(certificates.elementAt(2).processing, false);
      expect(certificates.elementAt(2).result, false);
    });

    test('Certificate option 4 should be equal to the expected', (){
      expect(certificates.elementAt(3).name, 'Certidão de Inscrição em Ano Curricular');
      expect(certificates.elementAt(3).requested, false);
      expect(certificates.elementAt(3).processing, false);
      expect(certificates.elementAt(3).result, false);
    });

    test('Certificate option 5 should be equal to the expected', (){
      expect(certificates.elementAt(4).name, 'Certidão de Inscrição em Ano Letivo');
      expect(certificates.elementAt(4).requested, false);
      expect(certificates.elementAt(4).processing, false);
      expect(certificates.elementAt(4).result, false);
    });

    test('Certificate option 6 should be equal to the expected', (){
      expect(certificates.elementAt(5).name, 'Certidão de Inscrição em Unidades Curriculares');
      expect(certificates.elementAt(5).requested, false);
      expect(certificates.elementAt(5).processing, false);
      expect(certificates.elementAt(5).result, false);
    });

    test('Certificate option 7 should be equal to the expected', (){
      expect(certificates.elementAt(6).name, 'Certidão de Matrícula');
      expect(certificates.elementAt(6).requested, false);
      expect(certificates.elementAt(6).processing, false);
      expect(certificates.elementAt(6).result, false);
    });

    test('Certificate option 8 should be equal to the expected', (){
      expect(certificates.elementAt(7).name, 'Certidão de Não Prescrição');
      expect(certificates.elementAt(7).requested, false);
      expect(certificates.elementAt(7).processing, false);
      expect(certificates.elementAt(7).result, false);
    });

    test('Certificate option 9 should be equal to the expected', (){
      expect(certificates.elementAt(8).name, 'Certidão de Programas e Cargas Horárias');
      expect(certificates.elementAt(8).requested, false);
      expect(certificates.elementAt(8).processing, false);
      expect(certificates.elementAt(8).result, false);
    });

    test('Certificate option 10 should be equal to the expected', (){
      expect(certificates.elementAt(9).name, 'Certidão de Realização de Unidades Curriculares');
      expect(certificates.elementAt(9).requested, false);
      expect(certificates.elementAt(9).processing, false);
      expect(certificates.elementAt(9).result, false);
    });

    test('Certificate option 11 should be equal to the expected', (){
      expect(certificates.elementAt(10).name, 'Passe sub23@superior.t');
      expect(certificates.elementAt(10).requested, false);
      expect(certificates.elementAt(10).processing, false);
      expect(certificates.elementAt(10).result, false);
    });
  });

  List<String> shippingOptions = certificateStub.getShippingOptions();

  group('Shipping options', (){
    test('First option should be Correio normal', (){
      expect(shippingOptions.elementAt(0), 'Correio normal');
    });

    test('Second option should be Correio registado com aviso de receção', (){
      expect(shippingOptions.elementAt(1), 'Correio registado com aviso de receção');
    });

    test('Third option should be Correio registado sem aviso de receção', (){
      expect(shippingOptions.elementAt(2), 'Correio registado sem aviso de receção');
    });

    test('Fourth option should be Levantamento presencial nos serviços', (){
      expect(shippingOptions.elementAt(3), 'Levantamento presencial nos serviços');
    });
  });

  Certificate certificate = Certificate('Passe Sub23', false, false, false);

  group('Class Certificate', (){
    test('Name should be Passe Sub23', (){
      expect(certificate.name, 'Passe Sub23');
    });

    test('Requested should be false', (){
      expect(certificate.requested, false);
    });

    test('Processing should be false', (){
      expect(certificate.processing, false);
    });

    test('Result should be false', (){
      expect(certificate.result, false);
    });
  });
}