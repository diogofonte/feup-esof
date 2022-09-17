import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uni/controller/parsers/parser_study_plan_position.dart';
import 'package:uni/view/Pages/evaluation_page_view.dart';
import 'package:uni/view/Pages/info_study_plan_page_view.dart';
import 'general_page_view.dart';
import 'package:uni/utils/study_plan_position_constants.dart' as StudyPlanConstants;

class StudyPlanPageView extends StatefulWidget{
  StudyPlanPageView({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => StudyPlanPageViewState();
}

class StudyPlanPageViewState extends GeneralPageViewState{
  int semester = 1,
      year = 1,
      topLimitYear = 3;
  SemesterMock mock;
  List<UC> ucs;
  Color headingColor;

  @override
  Widget getBody(BuildContext context){
    mock = SemesterMock();
    ucs = mock.updateUCs(year,semester);
    headingColor = updateHeadingColor(ucs);

    return Scaffold(
      body: Stack(
        children: [
          // Ano
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
                    color: Color.fromARGB(255, 0xfa, 0xfa, 0xfa),
                    borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 1.5, //aumentar caso queira mais sombra
                          spreadRadius: 0.1,
                        )
                      ]
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment(-0.90,-0.94),
                        child: Text(
                          '$yearº ' + StudyPlanConstants.year,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400, //.bold ou .w600
                            color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          ),
                          key: const Key('YearCounter'),
                        ),
                      ),
                      Align( //button to increase year
                        alignment: Alignment(1.05,-1),
                        child: TextButton(

                          onPressed: () {
                            if(year < topLimitYear){
                              year++;
                              ucs = mock.updateUCs(year, semester);
                              headingColor = updateHeadingColor(ucs);
                              setState(() {});
                            }
                          },

                          child: Icon(Icons.arrow_forward, key: Key('incrementYear'), size: 25),
                          style: TextButton.styleFrom(
                              shape: CircleBorder(),
                          ),
                        ),
                      ),
                      Align( //button to decrease year
                        alignment: Alignment(0.75,-1),
                        child: TextButton(
                          key: Key('decrementYear'),
                          onPressed: () {
                            if(year > 1){
                              year--;
                              ucs = mock.updateUCs(year, semester);
                              headingColor = updateHeadingColor(ucs);
                              setState(() {});
                            }
                          },
                          child: Icon(Icons.arrow_back, size: 25),
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
          ),
          // Semestre
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 1.65,
                  width: MediaQuery.of(context).size.height / 2.70,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0xfa, 0xfa, 0xfa),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 1.5, //aumentar caso queira mais sombra
                        spreadRadius: 0.1,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment(-0.80,-0.94),
                        child: Text(
                          '$semesterº ' + StudyPlanConstants.semester,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                          ),
                          key: const Key('SemesterCounter'),
                        ),
                      ),
                      Align( //button to increase semester
                        alignment: Alignment(1.05,-1),
                        child: TextButton(
                          onPressed: () {
                            if(semester < 2){
                              semester++;
                              ucs = mock.updateUCs(year, semester);
                              headingColor = updateHeadingColor(ucs);
                              setState(() {});
                            }
                          },
                          key: const Key('incrementSemester'),
                          child: Icon(Icons.arrow_forward, size: 25),
                          style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                      Align( //button to decrease semester
                        alignment: Alignment(0.70,-1),
                        child: TextButton(
                          onPressed: () {
                            if(semester > 1){
                              semester--;
                              ucs = mock.updateUCs(year, semester);
                              headingColor = updateHeadingColor(ucs);
                              setState(() {});
                            }
                          },
                          key: const Key('decrementSemester'),
                          child: Icon(Icons.arrow_back, size: 25),
                          style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.40,0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: SingleChildScrollView(
                            child: DataTable(
                              headingRowColor: MaterialStateProperty.all(headingColor),
                              columnSpacing: MediaQuery.of(context).size.height/70,
                              columns: [
                                tableColumn(StudyPlanConstants.code, false),
                                tableColumn(StudyPlanConstants.initials, false),
                                tableColumn(StudyPlanConstants.ects, true),
                                tableColumn(StudyPlanConstants.grade, true),
                              ],
                              rows: [
                                tableRow(ucs.elementAt(0).code,ucs.elementAt(0).initials,
                                    ucs.elementAt(0).ects, ucs.elementAt(0).grade,
                                    ucs.elementAt(0).stateColor),
                                tableRow(ucs.elementAt(1).code,ucs.elementAt(1).initials,
                                    ucs.elementAt(1).ects, ucs.elementAt(1).grade,
                                    ucs.elementAt(1).stateColor),
                                tableRow(ucs.elementAt(2).code,ucs.elementAt(2).initials,
                                    ucs.elementAt(2).ects, ucs.elementAt(2).grade,
                                    ucs.elementAt(2).stateColor),
                                tableRow(ucs.elementAt(3).code,ucs.elementAt(3).initials,
                                    ucs.elementAt(3).ects, ucs.elementAt(3).grade,
                                    ucs.elementAt(3).stateColor),
                                tableRow(ucs.elementAt(4).code,ucs.elementAt(4).initials,
                                    ucs.elementAt(4).ects, ucs.elementAt(4).grade,
                                    ucs.elementAt(4).stateColor),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
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
                        text: StudyPlanConstants.studyPlanPosition,
                        style: Theme.of(context).textTheme.headline6.apply(
                            fontSizeDelta: 8,
                        ),
                      )
                    ),
                ),
              ]
            ),
          ),
          // icon para página de informação
          Center(
            child: Align(
              alignment: Alignment(0.80,-0.93),
              child: TextButton(
                key: Key("Info"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => StudyPlanInfoPageView()));
                },
                child: Icon(Icons.info_outline, size: 25),
                style: TextButton.styleFrom(
                  shape: CircleBorder(),
                ),
              ),
            ),
          ),
          // botão para voltar ao menu
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
        ]
      )
    );
  }
}

DataColumn tableColumn(String title, bool boolean){
  return DataColumn(
    label: Text(
      title,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
      ),
    ),
    numeric: boolean,
  );
}

DataRow tableRow(String code, String initials, String ects, String grade,
                 int stateColor){
  Color color;

  if(stateColor == 1 ){
    color = Color.fromARGB(255, 216, 215, 215); //não inscrito
  } else if(stateColor == 2) {
    color = Color.fromARGB(255, 218, 214, 129); //inscrito
  } else if(stateColor == 3){
    color = Color.fromARGB(255, 183, 213, 155); //com aprovação/acerto de plano
  }

  return DataRow(
    cells: [
      DataCell(Text(code)),
      DataCell(Text(initials)),
      DataCell(Text(ects)),
      DataCell(Text(grade)),
    ],
    color: MaterialStateProperty.all(color),
  );
}

Color updateHeadingColor(List<UC> ucs){
  bool boolean = true;
  for(UC uc in ucs){
    if(uc.stateColor == 1 || uc.stateColor == 2){
      boolean = false;
    }
  }
  if(boolean){
    return Color.fromARGB(255, 130, 163, 99); //Período Completo
  }
  return Color.fromARGB(255, 180, 176, 81); //Período por fazer
}