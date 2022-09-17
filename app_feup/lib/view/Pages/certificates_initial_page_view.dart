import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uni/controller/parsers/parser_certificates.dart';
import 'package:uni/view/Pages/certificate_observations_page_view.dart';
import 'package:uni/view/Pages/evaluation_page_view.dart';
import 'package:uni/view/Pages/new_certificate_page_view.dart';
import 'package:uni/view/Pages/not_implemented_page_view.dart';
import 'general_page_view.dart';
import 'package:uni/utils/certificates_pages_constants.dart' as CertificatesConstants;

class CertificatesInitialPageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CertificatesInitialPageViewState();
}

class CertificatesInitialPageViewState extends GeneralPageViewState {
  List<Certificate> studentCertificates = StudentStub().getStudentCertificates();

  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, mediaQueryData.size.height / 20),
      child: ListView(
        children: [
          Column(
            children: [
              // título
              Center(
                child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2000,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: mediaQueryData.size.height / 40),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:
                                    (context) => EvaluationPageView()));
                              },
                              child: Icon(Icons.arrow_back_sharp, size: 30),
                              style: TextButton.styleFrom(
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 40, left: mediaQueryData.size.width / 6),
                                child: RichText(
                                    text: TextSpan(
                                      text: CertificatesConstants.certificates,
                                      style: Theme.of(context).textTheme.headline6.apply(
                                        fontSizeDelta: 8,
                                        //fontWeightDelta: 3,
                                      ),
                                    )
                                ),
                              ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    certificateState(mediaQueryData, context, studentCertificates[0].name),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    certificateState(mediaQueryData, context, studentCertificates[1].name),
                    Container(
                      margin:EdgeInsets.only(top: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 1.25),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => NewCertificatePageView()));
                          });
                        },
                        key: const Key('requestCertificate'),
                        child: Icon(Icons.add_circle_outlined, size: 53),
                        style: TextButton.styleFrom(
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


Container certificateState(MediaQueryData mediaQueryData, BuildContext context, String name) {
  return Container(
      height: mediaQueryData.size.height / 3.25,
      width: mediaQueryData.size.width / 1.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 50),
              child: Text(name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                  )
              )
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                height: MediaQuery.of(context).size.height / 6.5,
                width: MediaQuery.of(context).size.width / 1.25,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: mediaQueryData.size.height / 50),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: mediaQueryData.size.height / 65),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: CertificatesConstants.state,
                          style: Theme.of(context).textTheme.headline3.apply(
                            fontSizeDelta: 2.5,
                            fontWeightDelta: 1,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: mediaQueryData.size.height / 55),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: CertificatesConstants.requested,
                                style: Theme.of(context).textTheme.headline3.apply(
                                  fontWeightDelta: 1,
                                  fontSizeFactor: 0.84,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: mediaQueryData.size.height / 55),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: CertificatesConstants.processing,
                                style: Theme.of(context).textTheme.headline3.apply(
                                  fontWeightDelta: 1,
                                  fontSizeFactor: 0.84,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: mediaQueryData.size.height / 55),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: CertificatesConstants.result,
                                style: Theme.of(context).textTheme.headline3.apply(
                                  fontWeightDelta: 1,
                                  fontSizeFactor: 0.84,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: mediaQueryData.size.height / 70),
                              child: Icon(Icons.check_circle_outline,
                                color: Colors.lightGreen,
                                size: 28,
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: mediaQueryData.size.height / 70),
                              child: Icon(Icons.hourglass_top,
                                color: Color.fromARGB(
                                    255, 0xB9, 0x9E, 0x55),
                                size: 28,
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: mediaQueryData.size.height / 70),
                              child: Icon(Icons.hourglass_top,
                                color: Color.fromARGB(
                                    255, 0xB9, 0x9E, 0x55),
                                size: 28,
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                  border: Border.all(color: Color.fromARGB(
                      255, 0xE3, 0xE3, 0xE3)),
                )
            ),),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => CertificateObservationsPageView()));
            },
            child: Text(CertificatesConstants.observations,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Color.fromARGB(255, 0x75, 0x17, 0x1e),
            ),
          ),],),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.1,
              blurRadius: 5.0,
            ),]
      ));
}