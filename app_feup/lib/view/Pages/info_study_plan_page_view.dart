import 'package:flutter/material.dart';
import 'package:uni/view/Pages/study_plan_page_view.dart';
import 'general_page_view.dart';
import 'package:uni/utils/study_plan_position_constants.dart' as StudyPlanConstants;

class StudyPlanInfoPageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StudyPlanInfoPageViewState();
}

class StudyPlanInfoPageViewState extends GeneralPageViewState{
  @override
  Widget getBody(BuildContext context){
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                containerCaption('Período por fazer',
                    Color.fromARGB(255, 180, 176, 81),
                    7, 7, 4,300,
                    mediaQueryData,
                    context
                ),
                containerCaption('Período Completo',
                    Color.fromARGB(255, 130, 163, 99),
                    7, 8, 300,300,
                    mediaQueryData,
                    context
                ),
                containerCaption('Não Inscrito',
                    Color.fromARGB(255, 216, 215, 215),
                    7, 8, 300,300,
                    mediaQueryData,
                    context
                ),
                containerCaption('Inscrito',
                    Color.fromARGB(255, 218, 214, 129),
                    7, 8, 300,300,
                    mediaQueryData,
                    context
                ),
                containerCaption('Com aprovação',
                    Color.fromARGB(255, 183, 213, 155),
                    7, 8, 300,300,
                    mediaQueryData,
                    context
                ),
                containerCaption('Acerto de plano',
                    Color.fromARGB(255, 183, 213, 155),
                    7, 8, 300,300,
                    mediaQueryData,
                    context
                ),
              ],
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment(-0.80,0.90),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => StudyPlanPageView()));
                },
                child: Icon(Icons.arrow_circle_left_outlined, size: 50),
                style: TextButton.styleFrom(
                  shape: CircleBorder(),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: mediaQueryData.size.height / 25,
                  ),
                  Container(
                    child: RichText(
                        text: TextSpan(
                            text: StudyPlanConstants.studyPlanPosition,
                            style: Theme.of(context).textTheme.headline6.apply(
                              fontSizeDelta: 8,
                              //fontWeightDelta: 3,
                            ),
                        )
                    ),
                  ),
                ]
            ),
          ),
        ]
      ),
    );
  }
}

Padding containerCaption(String description, Color color, int left, int right,
                         int top, int bottom, MediaQueryData mediaQueryData,
                         BuildContext context){
  return Padding(
    padding: EdgeInsets.fromLTRB(
      mediaQueryData.size.width / left,
      mediaQueryData.size.width / top,
      mediaQueryData.size.width / right,
      mediaQueryData.size.width / bottom,
    ),
    child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              height: mediaQueryData.size.height / 25,
              width: mediaQueryData.size.height / 14,
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: RichText(
                text: TextSpan(
                  text: description,
                  style: Theme.of(context).textTheme.headline6.
                  apply(fontSizeDelta: 3),
                )
            ),
          ),
        ]
    ),
  );
}