import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'evaluation_page_view.dart';
import 'general_page_view.dart';
import 'package:uni/controller/parsers/parser_academic_pathway.dart';

class AcademicPathwayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AcademicPathwayState();
}

class AcademicPathwayState extends GeneralPageViewState {

  _launchURL(int n) async {
    final String url = toUcLink(n);
    await launch(url);
  }

  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final ProfileStub profile = ProfileStub();
    int counter = 2;

    return Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.fromLTRB(0, 0, 0, mediaQueryData.size.height / 20),
        child: Stack(
            children: [
              Center(
                //Page title
                child: Column(
                  children: [
                    SizedBox(
                      height: mediaQueryData.size.height / 30,
                    ),
                    Row(
                        children: [
                          Container(
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
                          Container(
                              margin: EdgeInsets.only(left: mediaQueryData.size.width/40),
                              child: RichText(
                                  text: TextSpan(
                                      text: 'Percurso Académico',
                                      style:
                                      Theme.of(context).textTheme.headline6.apply(fontSizeDelta: 7)
                                  )
                              )),
                        ]),],),),
              Center(
                //average, ects and curricular units
                  child: Column(
                      children: [
                        SizedBox(
                          height: mediaQueryData.size.height / 8.5,
                        ),
                        Container(
                            height: mediaQueryData.size.height / 3.7,
                            width: mediaQueryData.size.width / 1.1,
                            child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        mediaQueryData.size.width/4.8,
                                        mediaQueryData.size.height/31.2,
                                        mediaQueryData.size.width/24,
                                        mediaQueryData.size.height/52),
                                    child:
                                    Text('Média',
                                      style: Theme.of(context).textTheme.headline3.
                                      apply(fontSizeDelta: 2),
                                    ),),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        mediaQueryData.size.width/4.8,
                                        mediaQueryData.size.height/14.18,
                                        mediaQueryData.size.width/9,
                                        mediaQueryData.size.height/19.5),
                                    child:
                                    Text(profile.getScoreAverage(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        mediaQueryData.size.width/1.8,
                                        mediaQueryData.size.height/31.2,
                                        mediaQueryData.size.width/21.8,
                                        mediaQueryData.size.height/52),
                                    child: Text('ECTS',
                                        style: Theme.of(context).textTheme.headline3.
                                        apply(fontSizeDelta: 2)
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        mediaQueryData.size.width/1.7,
                                        mediaQueryData.size.height/14.18,
                                        mediaQueryData.size.width/21.18,
                                        mediaQueryData.size.height/52),
                                      child: Text(profile.getAchievedECTS(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        mediaQueryData.size.width/5.5,
                                        mediaQueryData.size.height/7,
                                        mediaQueryData.size.width/24,
                                        mediaQueryData.size.height/52,),
                                    child: Text('ECTS por reconhecimento',
                                        style: Theme.of(context).textTheme.headline3.
                                        apply(fontSizeDelta: 1)
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        mediaQueryData.size.width/2.35,
                                        mediaQueryData.size.height/5.5,
                                        mediaQueryData.size.width/21.18,
                                        mediaQueryData.size.height/52),
                                    child:
                                    Text(profile.getECTSByRecognition(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                ]),
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
                            )),
                        SizedBox(
                          height: mediaQueryData.size.height / 30,
                        ),
                        Container(
                          height: mediaQueryData.size.height / 2.46,
                          width: mediaQueryData.size.width / 1.1,
                          /* Title Section */
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text('Unidades Curriculares',
                                    style: Theme.of(context).textTheme.headline3.
                                    apply(fontSizeDelta: 7)
                                ),
                              ),
                              /* UC's table */
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    15, mediaQueryData.size.height / (2.13 * 6), 20, 0),
                                child:FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: DataTable(
                                    headingRowColor: MaterialStateProperty.all(Color(0xFFC4C4C4)),
                                    dataRowColor: MaterialStateProperty.all(Color(0xFFE4E4E4)),
                                    columnSpacing: 10,
                                    columns: <DataColumn>[
                                      DataColumn(
                                        label: Expanded(
                                          child: Text('Nome',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 0xBE, 0x28, 0x28),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataColumn(label: _verticalDivider),
                                      DataColumn(
                                        label: Expanded(
                                          child: Text('Sigla',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 0xBE, 0x28, 0x28),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataColumn(label: _verticalDivider),
                                      DataColumn(
                                        label: Expanded(
                                          child: Text('Créditos',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 0xBE, 0x28, 0x28),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataColumn(label: _verticalDivider),
                                      DataColumn(
                                        label: Expanded(
                                          child: Text('Nota',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 0xBE, 0x28, 0x28),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                    rows: <DataRow>[
                                      DataRow(
                                        cells: <DataCell>[
                                          DataCell(Container(
                                              width: mediaQueryData.size.width/3,
                                              child: Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.center,
                                                    text:
                                                    TextSpan(
                                                        text: profile.getCurrentYearUCs(counter).elementAt(0).name,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          decoration: TextDecoration.underline,),
                                                        recognizer: TapGestureRecognizer()..onTap = () {
                                                          _launchURL(1);
                                                        }
                                                    ),
                                                  )))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text:
                                                TextSpan(
                                                    text: profile.getCurrentYearUCs(counter).elementAt(0).initials,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    recognizer: TapGestureRecognizer()..onTap = () {
                                                      _launchURL(1);
                                                    }
                                                ),
                                              ))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(
                                              child: Text(profile.getCurrentYearUCs(counter).elementAt(0).ects,
                                              ))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(
                                              child: Text(profile.getCurrentYearUCs(counter).elementAt(0).grade,
                                              ))),
                                        ],
                                      ),
                                      DataRow(
                                        cells: <DataCell>[
                                          DataCell(Container(
                                              width: mediaQueryData.size.width/3,
                                              child: Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.center,
                                                    text:
                                                    TextSpan(
                                                        text: profile.getCurrentYearUCs(counter).elementAt(1).name,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          decoration: TextDecoration.underline,
                                                        ),
                                                        recognizer: TapGestureRecognizer()..onTap = () {
                                                          _launchURL(2);
                                                        }
                                                    ),
                                                  )))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text:
                                                TextSpan(
                                                    text: profile.getCurrentYearUCs(counter).elementAt(1).initials,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    recognizer: TapGestureRecognizer()..onTap = () {
                                                      _launchURL(2);
                                                    }
                                                ),
                                              ))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(1).ects))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(1).grade))),
                                        ],
                                      ),
                                      DataRow(
                                        cells: <DataCell>[
                                          DataCell(Container(
                                              width: mediaQueryData.size.width/3,
                                              child: Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.center,
                                                    text:
                                                    TextSpan(
                                                        text: profile.getCurrentYearUCs(counter).elementAt(2).name,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          decoration: TextDecoration.underline,
                                                        ),
                                                        recognizer: TapGestureRecognizer()..onTap = () {
                                                          _launchURL(3);
                                                        }
                                                    ),
                                                  )))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text:
                                                TextSpan(
                                                    text: profile.getCurrentYearUCs(counter).elementAt(2).initials,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    recognizer: TapGestureRecognizer()..onTap = () {
                                                      _launchURL(3);
                                                    }
                                                ),
                                              ))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(2).ects))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(2).grade))),
                                        ],
                                      ),
                                      DataRow(
                                        cells: <DataCell>[
                                          DataCell(Container(
                                              width: mediaQueryData.size.width/3,
                                              child: Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.center,
                                                    text:
                                                    TextSpan(
                                                        text: profile.getCurrentYearUCs(counter).elementAt(3).name,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          decoration: TextDecoration.underline,
                                                        ),
                                                        recognizer: TapGestureRecognizer()..onTap = () {
                                                          _launchURL(4);
                                                        }
                                                    ),
                                                  )))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text:
                                                TextSpan(
                                                    text: profile.getCurrentYearUCs(counter).elementAt(3).initials,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    recognizer: TapGestureRecognizer()..onTap = () {
                                                      _launchURL(4);
                                                    }
                                                ),
                                              ))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(3).ects))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(3).grade))),
                                        ],
                                      ),
                                      DataRow(
                                        cells: <DataCell>[
                                          DataCell(Container(
                                              width: mediaQueryData.size.width/3,
                                              child: Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.center,
                                                    text:
                                                    TextSpan(
                                                        text: profile.getCurrentYearUCs(counter).elementAt(4).name,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          decoration: TextDecoration.underline,
                                                        ),
                                                        recognizer: TapGestureRecognizer()..onTap = () {
                                                          _launchURL(5);
                                                        }
                                                    ),
                                                  )))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text:
                                                TextSpan(
                                                    text: profile.getCurrentYearUCs(counter).elementAt(4).initials,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    recognizer: TapGestureRecognizer()..onTap = () {
                                                      _launchURL(5);
                                                    }
                                                ),
                                              ))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(4).ects))),
                                          DataCell(_verticalDivider),
                                          DataCell(Center(child: Text(profile.getCurrentYearUCs(counter).elementAt(4).grade))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          /* Main Box decoration */
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.1,
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                        )
                      ]))
            ]));
  }
}

final Widget _verticalDivider = const VerticalDivider(
  color: Colors.white,
  thickness: 1,
);
