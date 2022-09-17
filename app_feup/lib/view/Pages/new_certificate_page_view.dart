import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni/view/Pages/certificates_initial_page_view.dart';
import 'package:uni/view/Pages/new_certificates_pages/passe_sub23_page_view.dart';
import '../../controller/parsers/parser_certificates.dart';
import 'general_page_view.dart';
import 'package:uni/utils/certificates_pages_constants.dart' as CertificatesConstants;

import 'new_certificates_pages/cae_page_view.dart';
import 'new_certificates_pages/ccgl_page_view.dart';
import 'new_certificates_pages/cgl_page_view.dart';
import 'new_certificates_pages/ciac_page_view.dart';
import 'new_certificates_pages/cial_page_view.dart';
import 'new_certificates_pages/ciuc_page_view.dart';
import 'new_certificates_pages/cm_page_view.dart';
import 'new_certificates_pages/cnp_page_view.dart';
import 'new_certificates_pages/cpch_page_view.dart';
import 'new_certificates_pages/cruc_page_view.dart';

class NewCertificatePageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NewCertificatePageViewState();
}

class NewCertificatePageViewState extends GeneralPageViewState{

  @override
  Widget getBody(BuildContext context){
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    List<Certificate> certificates = CertificateStub().getCertificatesOptions();

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    newCertificateOption(certificates.elementAt(0).name,
                        10, 10, 4, 50,
                        mediaQueryData,
                        context, 0,
                    ),
                    newCertificateOption(certificates.elementAt(1).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 1,
                    ),
                    newCertificateOption(certificates.elementAt(2).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 2,
                    ),
                    newCertificateOption(certificates.elementAt(3).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 3,
                    ),
                    newCertificateOption(certificates.elementAt(4).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 4,
                    ),
                    newCertificateOption(certificates.elementAt(5).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 5,
                    ),
                    newCertificateOption(certificates.elementAt(6).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 6,
                    ),
                    newCertificateOption(certificates.elementAt(7).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 7,
                    ),
                    newCertificateOption(certificates.elementAt(8).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 8,
                    ),
                    newCertificateOption(certificates.elementAt(9).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 9,
                    ),
                    newCertificateOption(certificates.elementAt(10).name,
                        10, 10, 50, 50,
                        mediaQueryData,
                        context, 10,
                    ),
                  ],
                ),
              ),
              //título
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
                                    (context) => CertificatesInitialPageView()));
                              },
                              child: Icon(Icons.arrow_back_sharp, size: 30),
                              style: TextButton.styleFrom(
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                          Expanded(child:
                          Container(
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
                          ),)
                        ],
                      ),
                    ]
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Padding newCertificateOption(String description, int left, int right, int top, int bottom,
                             MediaQueryData mediaQueryData, BuildContext context,
                             int option){

  return Padding(
    padding: EdgeInsets.fromLTRB(
      mediaQueryData.size.width / left,
      mediaQueryData.size.width / top,
      mediaQueryData.size.width / right,
      mediaQueryData.size.width / bottom,
    ),
    child: OutlinedButton.icon(
      onPressed: () {
        switch(option){
          case 0: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCCGLCertificatePageView()));
            break;
          }
          case 1: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCAECertificatePageView()));
            break;
          }
          case 2: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCGLCertificatePageView()));
            break;
          }
          case 3: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCIACCertificatePageView()));
            break;
          }
          case 4: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCIALCertificatePageView()));
            break;
          }
          case 5: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCIUCCertificatePageView()));
            break;
          }
          case 6: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCMCertificatePageView()));
            break;
          }
          case 7: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCNPCertificatePageView()));
            break;
          }
          case 8: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCPCHCertificatePageView()));
            break;
          }
          case 9: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewCRUCCertificatePageView()));
            break;
          }
          case 10: {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => NewPasseSub23CertificatePageView()));
            break;
          }
        }
      },
      style: OutlinedButton.styleFrom(
        onSurface: Color.fromARGB(255, 0x75, 0x17, 0x1e), //_darkRed
        backgroundColor: Color.fromARGB(255, 215, 215, 215),
        fixedSize: Size(mediaQueryData.size.height, mediaQueryData.size.height/13),
      ),
      icon: Icon(
        Icons.add,
        size: 25,
        color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
      ),
      label: RichText(
        text: TextSpan(
          text: description,
          style: TextStyle(
            color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}