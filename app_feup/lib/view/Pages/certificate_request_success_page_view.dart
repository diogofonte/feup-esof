import 'package:flutter/material.dart';
import 'package:uni/view/Pages/general_page_view.dart';
import '../../utils/improv_exam_enroll_form_constants.dart';

class CertificateRequestSuccessPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CertificateRequestSuccessPageViewState();
}

class CertificateRequestSuccessPageViewState extends GeneralPageViewState{
  @override
  Widget getBody(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: examEnrollment,
                      style: Theme.of(context).textTheme.headline6.apply(
                        fontSizeDelta: 7,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.height / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 3.0, //aumentar caso queira mais sombra
                        spreadRadius: 0.1,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      textLine(0, -0.25, 'O teu pedido foi'),
                      textLine(0, 0, 'submetido com'),
                      textLine(0, 0.25, 'sucesso!'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Center textLine(double x, double y, String phrase){
  return Center(
    child: Align(
      alignment: Alignment(x,y),
      child: Text(
        phrase,
        style: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
        ),
      ),
    ),
  );
}