import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni/view/Pages/evaluation_page_view.dart';
import 'package:uni/view/Pages/general_page_view.dart';
import '../../controller/parsers/parser_admission_data_access.dart';

class AdmissionDataAccessPageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AdmissionDataPageViewState();
}

class AdmissionDataPageViewState extends GeneralPageViewState{
  int inicialYear = 2021,
      finalYear = 2022;
  Student s = Student('Diogo Fonte', '202004175', 'up202004175@edu.fc.up.pt',
                      '1', '170', '148', 'ESDJGFA', 'Secundário', '2', 'LEIC - FEUP');

  @override
  Widget getBody(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 1.40,
                  width: MediaQuery.of(context).size.height / 2.3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 3.0, //aumentar caso queira mais sombra
                          spreadRadius: 0.1,
                        )
                      ]
                  ),
                  child: Stack(
                    children: [
                      text('$inicialYear / ' + '$finalYear',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          24, -0.85, -0.90),
                      text('Regime de Ingresso',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          20, 0, -0.70),
                      text('Sucessor de par instituição/ciclo',
                           Color.fromARGB(255, 0x30, 0x30, 0x30),
                           17, 0, -0.57),
                      text('de estudos (SPIC)',
                           Color.fromARGB(255, 0x30, 0x30, 0x30),
                           17, 0, -0.49),
                      //divider(0, -0.40),
                      text('Fase',
                           Color.fromARGB(255, 0x75, 0x17, 0x1e),
                           20, -0.80, -0.30),
                      text(s.admissionData.phase,
                           Color.fromARGB(255, 0x30, 0x30, 0x30),
                           17, 0.84, -0.30),
                      divider(0, -0.20),
                      text('Média de Candidatura',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          20, -0.60, -0.10),
                      text(s.admissionData.applyAverage,
                          Color.fromARGB(255, 0x30, 0x30, 0x30),
                          17, 0.83, -0.10),
                      divider(0, 0),
                      text('Média 12º',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          20, -0.75, 0.10),
                      text(s.admissionData.highSchoolAverage,
                          Color.fromARGB(255, 0x30, 0x30, 0x30),
                          17, 0.83, 0.10),
                      divider(0, 0.20),
                      text('Escola Secundária',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          20, -0.65, 0.30),
                      text(s.admissionData.highSchool,
                          Color.fromARGB(255, 0x30, 0x30, 0x30),
                          17, 0.80, 0.30),
                      divider(0, 0.40),
                      text('Habilitações',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          20, -0.73, 0.50),
                      text(s.admissionData.qualifications,
                          Color.fromARGB(255, 0x30, 0x30, 0x30),
                          17, 0.80, 0.50),
                      divider(0, 0.60),
                      text('Ano Curricular Inicial',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          20, -0.60, 0.70),
                      text(s.admissionData.initialYear,
                          Color.fromARGB(255, 0x30, 0x30, 0x30),
                          17, 0.84, 0.70),
                      divider(0, 0.80),
                      text('1º opção',
                          Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          20, -0.75, 0.90),
                      text(s.admissionData.firstOption,
                          Color.fromARGB(255, 0x30, 0x30, 0x30),
                          17, 0.80, 0.90),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // título
          Center(
            child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Container(
                    child: RichText(
                        text: TextSpan(
                          text: 'Dados de Ingresso',
                          style: Theme.of(context).textTheme.headline6.apply(
                            fontSizeDelta: 8,
                          ),
                        )
                    ),
                  ),
                ]
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment(-1,-0.93),
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
          ),
        ],
      ),
    );
  }
}

Align text(String text, Color color, double size, double x, double y){
  return Align(
    alignment: Alignment(x,y),
    child: Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400, //.bold ou .w600
        color: color,
      ),
    ),
  );
}

Align divider(double x, double y){
  return Align(
    alignment: Alignment(x,y),
    child: Divider(
      indent: 18,
      endIndent: 18,
      color: Colors.black,
    ),
  );
}