import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:uni/controller/parsers/parser_statutes_and_regimes.dart';
import 'package:uni/view/Pages/evaluation_page_view.dart';
import 'general_page_view.dart';

import 'package:uni/utils/statutes_and_regimes_constants.dart' as StatutesAndRegimesConstants;

class StatutesAndRegimesPageView extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => StatutesAndRegimesPageViewState();
}

class StatutesAndRegimesPageViewState extends GeneralPageViewState {
    SchoolYearStub schoolYearStub = new SchoolYearStub();
    StatuteStub statuteStub = new StatuteStub();
    FrequencyRegimeStub frequencyRegimeStub = new FrequencyRegimeStub();

    @override
    Widget getBody(BuildContext context) {
        final MediaQueryData mediaQueryData = MediaQuery.of(context);

        return Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, mediaQueryData.size.height / 20),
            child: Stack(
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
                              text: StatutesAndRegimesConstants.statutesAndRegimes,
                              style: Theme.of(context).textTheme.headline6.apply(
                                fontSizeDelta: 7,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 35,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.1,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Stack(
                            children: [
                              Container(
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: mediaQueryData.size.height / 50, bottom: mediaQueryData.size.height / 50),
                                  child: Text(statuteStub.getStatuteName(schoolYearStub.getYear()),
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                                      )
                                  )
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 12, bottom: mediaQueryData.size.height / 50),
                                child: Text(StatutesAndRegimesConstants.schoolYear + schoolYearStub.getYear(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black87,
                                    )
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 8.5, bottom: mediaQueryData.size.height / 50),
                                child: Divider(
                                  indent: 17,
                                  endIndent: 17,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(child: Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: mediaQueryData.size.height / 7, bottom:mediaQueryData.size.height / 50),
                                    child: Text(StatutesAndRegimesConstants.startDate,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black87,
                                        )
                                    ),
                                  ),),
                                  Expanded(child: Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: mediaQueryData.size.height / 7, bottom:mediaQueryData.size.height / 50),
                                    child: Text(StatutesAndRegimesConstants.endDate,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black87,
                                        )
                                    ),
                                  ),),],
                              ),
                              Row(
                                children: [
                                  Expanded(child: Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: mediaQueryData.size.height / 5.05, bottom:mediaQueryData.size.height / 50),
                                    child: Text(statuteStub.getStartDate(schoolYearStub.getYear()),
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black87,
                                        )
                                    ),
                                  ),),
                                  Expanded(child: Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: mediaQueryData.size.height / 5.05, bottom:mediaQueryData.size.height / 50),
                                    child: Text(statuteStub.getEndDate(schoolYearStub.getYear()),
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black87,
                                        )
                                    ),
                                  ),),
                                ],
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 4.3, bottom:mediaQueryData.size.height / 50),
                                child: Divider(
                                  indent: 17,
                                  endIndent: 17,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 3.9, bottom:mediaQueryData.size.height / 50),
                                child: RichText(
                                  text: TextSpan(
                                    children: [ TextSpan(
                                      text: StatutesAndRegimesConstants.autoRenewal,
                                      style: const TextStyle(
                                        fontSize: 19.5,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(statuteStub.getAutomaticRenewal(schoolYearStub.getYear()) ? Icons.check_circle_outline : Icons.cancel_outlined,
                                          color: statuteStub.getAutomaticRenewal(schoolYearStub.getYear()) ? Colors.lightGreen : Color.fromARGB(255,0xB4,0x17,0x1e),
                                          size: 28,
                                        ),
                                      ),],),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 3.4, bottom:mediaQueryData.size.height / 50),
                                child: Divider(
                                  indent: 17,
                                  endIndent: 17,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 3.1, bottom:mediaQueryData.size.height / 50),
                                alignment: Alignment.topCenter,
                                child: Text(StatutesAndRegimesConstants.affectedPeriod,
                                    style: TextStyle(
                                      fontSize: 16.5,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black87,
                                    )
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(child: Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: mediaQueryData.size.height / 2.7, bottom:mediaQueryData.size.height / 50),
                                    child: Column(children: [
                                      Text(StatutesAndRegimesConstants.anual,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black87,
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:mediaQueryData.size.height / 50),
                                        child:
                                        Icon(statuteStub.getAnualStatute(schoolYearStub.getYear()) ? Icons.check_circle_outline : Icons.cancel_outlined,
                                          color: statuteStub.getAnualStatute(schoolYearStub.getYear()) ? Colors.lightGreen : Color.fromARGB(255,0xB4,0x17,0x1e),
                                          size: 28,
                                        ),),
                                    ],),
                                  ),),
                                  Expanded(child: Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: mediaQueryData.size.height / 2.7, bottom:mediaQueryData.size.height / 50),
                                    child: Column(children: [
                                      Text(StatutesAndRegimesConstants.semester1,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black87,
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:mediaQueryData.size.height / 50),
                                        child:
                                        Icon(statuteStub.get1stSemStatute(schoolYearStub.getYear()) ? Icons.check_circle_outline : Icons.cancel_outlined,
                                          color: statuteStub.get1stSemStatute(schoolYearStub.getYear()) ? Colors.lightGreen : Color.fromARGB(255,0xB4,0x17,0x1e),
                                          size: 28,
                                        ),
                                      ),
                                    ],
                                    ),
                                  ),
                                  ),
                                  Expanded(child: Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: mediaQueryData.size.height / 2.7, bottom:mediaQueryData.size.height / 50),
                                    child: Column(children: [
                                      Text(StatutesAndRegimesConstants.semester2,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black87,
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:mediaQueryData.size.height / 50),
                                        child:
                                        Icon(statuteStub.get2ndSemStatute(schoolYearStub.getYear()) ? Icons.check_circle_outline : Icons.cancel_outlined,
                                          color: statuteStub.get2ndSemStatute(schoolYearStub.getYear()) ? Colors.lightGreen : Color.fromARGB(255,0xB4,0x17,0x1e),
                                          size: 28,
                                        ),
                                      ),
                                    ],
                                    ),
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height /35,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 4.2,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Stack(
                            children: [
                              Center(
                                child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(StatutesAndRegimesConstants.dedication + frequencyRegimeStub.getDedication(schoolYearStub.getYear()),
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black87,
                                              )
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(StatutesAndRegimesConstants.presence + frequencyRegimeStub.getPresence(schoolYearStub.getYear()),
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black87,
                                              ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(StatutesAndRegimesConstants.schedule + frequencyRegimeStub.getSchedule(schoolYearStub.getYear()),
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black87,
                                              )
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          ),
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
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ],
            ),
        );
    }
}