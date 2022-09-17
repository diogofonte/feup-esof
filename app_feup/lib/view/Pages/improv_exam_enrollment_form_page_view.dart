import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uni/controller/parsers/parser_improvement_exam_enrollment.dart';
import 'package:uni/view/Pages/evaluation_page_view.dart';
import 'package:uni/view/Pages/home_page_view.dart';
import 'general_page_view.dart';

import 'package:uni/utils/improv_exam_enroll_form_constants.dart' as ImprovementExamEnrollmentFormConstants;

import 'improv_exam_enrollment_success_page_view.dart';
import 'improvement_exam_enrollment_page_view.dart';

class ImprovementExamEnrollmentFormPageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ImprovementExamEnrollmentFormPageViewState();
}

class ImprovementExamEnrollmentFormPageViewState extends GeneralPageViewState {
  SchoolYearStub schoolYearStub = new SchoolYearStub();
  DateStub dateStub = new DateStub();

  static GlobalKey<FormState> _formKey1 = new GlobalKey<FormState>();
  Key _k1 = new GlobalKey();

  static GlobalKey<FormState> _formKey2 = new GlobalKey<FormState>();
  Key _k2 = new GlobalKey();

  static GlobalKey<FormState> _formKey3 = new GlobalKey<FormState>();
  Key _k3 = new GlobalKey();

  String valueChoose;
  String valueChoose2;
  String valueChoose3;
  String valueChoose4;
  String valueChoose5;
  String valueChoose6;
  String valueChoose7;
  String valueChoose8;
  String valueChoose9;

  bool checkValue = false;
  bool checkValue2 = false;

  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, mediaQueryData.size.height / 20),
      child: ListView(
        children: [
          Stack(
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
                            text: ImprovementExamEnrollmentFormConstants.examEnrollment,
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
                        height: MediaQuery.of(context).size.height / 3.9,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 50, bottom: mediaQueryData.size.height / 50),
                                child: Text(ImprovementExamEnrollmentFormConstants.contacts,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                                  )
                                )
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 16, bottom: mediaQueryData.size.height / 50),
                                child: Text(ImprovementExamEnrollmentFormConstants.email,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  )
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 11, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 25, right: mediaQueryData.size.width / 25),
                                child: Form(
                                  key: _formKey1,
                                  child: TextFormField(
                                    key: _k1,
                                    textAlignVertical: TextAlignVertical.center,
                                    obscureText: false,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      errorText: 'Campo de preenchimento obrigatório',
                                      isCollapsed: true,
                                      border: OutlineInputBorder(),
                                      filled: true,
                                      fillColor: Color.fromARGB(
                                          255, 0xEA, 0xEA, 0xEA),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 40, mediaQueryData.size.height / 180,mediaQueryData.size.width / 40, mediaQueryData.size.height / 180),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 6.0, bottom: mediaQueryData.size.height / 50),
                                child: Text(ImprovementExamEnrollmentFormConstants.phone,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                    ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 5.0, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 25, right: mediaQueryData.size.width / 25),
                                child: Form(
                                  key: _formKey2,
                                  child: TextField(
                                    key: _k2,
                                    textAlignVertical: TextAlignVertical.center,
                                    obscureText: false,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      isCollapsed: true,
                                      border: OutlineInputBorder(),
                                      filled: true,
                                      fillColor: Color.fromARGB(
                                          255, 0xEA, 0xEA, 0xEA),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 40, mediaQueryData.size.height / 180,mediaQueryData.size.width / 40, mediaQueryData.size.height / 180),
                                    ),
                                  ),
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
                    ],
                ),
              ),
              SizedBox(
              height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.83,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Stack(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 50, bottom: mediaQueryData.size.height / 50),
                          child: Text(ImprovementExamEnrollmentFormConstants.enrollment,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                              ),
                          ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 16, bottom: mediaQueryData.size.height / 50),
                        child: Text(ImprovementExamEnrollmentFormConstants.exam,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                          height: mediaQueryData.size.height / 27,
                          //padding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 40, mediaQueryData.size.height / 180,mediaQueryData.size.width / 40, mediaQueryData.size.height / 180),
                          margin: EdgeInsets.only(top: mediaQueryData.size.height / 11, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 25, right: mediaQueryData.size.width / 25),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                            borderRadius: BorderRadius.circular(10)
                          ),
                        child: DropdownButton(
                          hint: Text(ImprovementExamEnrollmentFormConstants.uc),
                          isExpanded: true,
                          underline: SizedBox(),
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 36,
                          value: valueChoose,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue;
                            });
                          },
                          items: schoolYearStub.getEnrolledUCs().map((valueItem) {
                            return DropdownMenuItem(child: Text(valueItem), value: valueItem);
                          }).toList(),
                        )
                      ),

                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 6.7, bottom: mediaQueryData.size.height / 50),
                        child: Text(ImprovementExamEnrollmentFormConstants.examDate,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            )
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                              height: mediaQueryData.size.height / 27,
                              width: mediaQueryData.size.width / 9,
                              margin: EdgeInsets.only(top: mediaQueryData.size.height / 5.6, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 25, right: mediaQueryData.size.width / 75),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: DropdownButton(
                                hint: Text(ImprovementExamEnrollmentFormConstants.day),
                                isExpanded: true,
                                underline: SizedBox(),
                                alignment: Alignment.centerRight,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 36,
                                value: valueChoose3,
                                onChanged: (newValue3) {
                                  setState(() {
                                    valueChoose3 = newValue3;
                                  });
                                },
                                items: dateStub.getDays().map((valueItem3) {
                                  return DropdownMenuItem(child: Text(valueItem3), value: valueItem3);
                                }).toList(),
                              )
                          ),),

                          Expanded(child: Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                              height: mediaQueryData.size.height / 27,
                              margin: EdgeInsets.only(top: mediaQueryData.size.height / 5.6, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 50, right: mediaQueryData.size.width / 50),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: DropdownButton(
                                hint: Text(ImprovementExamEnrollmentFormConstants.month),
                                isExpanded: true,
                                underline: SizedBox(),
                                alignment: Alignment.centerRight,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 36,
                                value: valueChoose4,
                                onChanged: (newValue5) {
                                  setState(() {
                                    valueChoose4 = newValue5;
                                  });
                                },
                                items: dateStub.getMonths().map((valueItem5) {
                                  return DropdownMenuItem(child: Text(valueItem5), value: valueItem5);
                                }).toList(),
                              )
                          ),),

                          Expanded(child: Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                              height: mediaQueryData.size.height / 27,
                              //padding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 40, mediaQueryData.size.height / 180,mediaQueryData.size.width / 40, mediaQueryData.size.height / 180),
                              margin: EdgeInsets.only(top: mediaQueryData.size.height / 5.6, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 75, right: mediaQueryData.size.width / 25),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: DropdownButton(
                                hint: Text(ImprovementExamEnrollmentFormConstants.year),
                                isExpanded: true,
                                underline: SizedBox(),
                                alignment: Alignment.centerRight,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 36,
                                value: valueChoose5,
                                onChanged: (newValue2) {
                                  setState(() {
                                    valueChoose5 = newValue2;
                                  });
                                },
                                items: dateStub.getYears().map((valueItem2) {
                                  return DropdownMenuItem(child: Text(valueItem2), value: valueItem2);
                                }).toList(),
                              )
                          ),),
                        ],
                      ),

                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 4.25, bottom: mediaQueryData.size.height / 50),
                        child: Text(ImprovementExamEnrollmentFormConstants.approvalDeclaration,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            )
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                          height: mediaQueryData.size.height / 27,
                          //padding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 40, mediaQueryData.size.height / 180,mediaQueryData.size.width / 40, mediaQueryData.size.height / 180),
                          margin: EdgeInsets.only(top: mediaQueryData.size.height / 3.45, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 25, right: mediaQueryData.size.width / 25),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: DropdownButton(
                            hint: Text(ImprovementExamEnrollmentFormConstants.schooolYear),
                            isExpanded: true,
                            underline: SizedBox(),
                            alignment: Alignment.centerRight,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            value: valueChoose2,
                            onChanged: (newValue2) {
                              setState(() {
                                valueChoose2 = newValue2;
                              });
                            },
                            items: dateStub.getSchoolYears().map((valueItem2) {
                              return DropdownMenuItem(child: Text(valueItem2), value: valueItem2);
                            }).toList(),
                          )
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 2.9, bottom: mediaQueryData.size.height / 50),
                        child: Text(ImprovementExamEnrollmentFormConstants.recognization,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            )
                        ),
                      ),
                      Row(
                          children: [
                            Expanded(child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                                height: mediaQueryData.size.height / 27,
                                width: mediaQueryData.size.width / 9,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 2.5, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 25, right: mediaQueryData.size.width / 75),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: DropdownButton(
                                  hint: Text(ImprovementExamEnrollmentFormConstants.day),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  alignment: Alignment.centerRight,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 36,
                                  value: valueChoose7,
                                  onChanged: (newValue3) {
                                    setState(() {
                                      valueChoose7 = newValue3;
                                    });
                                  },
                                  items: dateStub.getDays().map((valueItem3) {
                                    return DropdownMenuItem(child: Text(valueItem3), value: valueItem3);
                                  }).toList(),
                                )
                            ),),

                            Expanded(child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                                height: mediaQueryData.size.height / 27,
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 2.5, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 50, right: mediaQueryData.size.width / 50),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: DropdownButton(
                                  hint: Text(ImprovementExamEnrollmentFormConstants.month),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  alignment: Alignment.centerRight,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 36,
                                  value: valueChoose8,
                                  onChanged: (newValue5) {
                                    setState(() {
                                      valueChoose8 = newValue5;
                                    });
                                  },
                                  items: dateStub.getMonths().map((valueItem5) {
                                    return DropdownMenuItem(child: Text(valueItem5), value: valueItem5);
                                  }).toList(),
                                )
                            ),),

                            Expanded(child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                                height: mediaQueryData.size.height / 27,
                                //padding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 40, mediaQueryData.size.height / 180,mediaQueryData.size.width / 40, mediaQueryData.size.height / 180),
                                margin: EdgeInsets.only(top: mediaQueryData.size.height / 2.5, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 75, right: mediaQueryData.size.width / 25),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: DropdownButton(
                                  hint: Text(ImprovementExamEnrollmentFormConstants.year),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  alignment: Alignment.centerRight,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 36,
                                  value: valueChoose9,
                                  onChanged: (newValue2) {
                                    setState(() {
                                      valueChoose9 = newValue2;
                                    });
                                  },
                                  items: dateStub.getYears().map((valueItem2) {
                                    return DropdownMenuItem(child: Text(valueItem2), value: valueItem2);
                                  }).toList(),
                                )
                            ),),
                          ],
                        ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 2.19, bottom: mediaQueryData.size.height / 50),
                        child: Text(ImprovementExamEnrollmentFormConstants.season,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            )
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: mediaQueryData.size.width / 40),
                          height: mediaQueryData.size.height / 27,
                          //padding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 40, mediaQueryData.size.height / 180,mediaQueryData.size.width / 40, mediaQueryData.size.height / 180),
                          margin: EdgeInsets.only(top: mediaQueryData.size.height / 2.06, bottom: mediaQueryData.size.height / 50, left: mediaQueryData.size.width / 25, right: mediaQueryData.size.width / 25),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: DropdownButton(
                            hint: Text(ImprovementExamEnrollmentFormConstants.examSeason),
                            isExpanded: true,
                            underline: SizedBox(),
                            alignment: Alignment.centerRight,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            value: valueChoose6,
                            onChanged: (newValue) {
                              setState(() {
                                valueChoose6 = newValue;
                              });
                            },
                            items: schoolYearStub.getExamsSeason().map((valueItem) {
                              return DropdownMenuItem(child: Text(valueItem), value: valueItem);
                            }).toList(),
                          )
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
                      ),]
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.8,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Stack(
                    children: [
                    Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 50),
                    child: Text(ImprovementExamEnrollmentFormConstants.declarations,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                        )
                    ),),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: mediaQueryData.size.width / 20, right: mediaQueryData.size.width / 20, top: mediaQueryData.size.height / 18, bottom: mediaQueryData.size.height / 50),
                      child: Text(ImprovementExamEnrollmentFormConstants.declarationsNote1,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          )
                      ),),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: mediaQueryData.size.height / 3.3, bottom: mediaQueryData.size.height / 50),
                        child: Checkbox(
                          activeColor: Colors.grey,
                          value: checkValue,
                          onChanged: (bool value) {
                            setState(() {
                              checkValue = value;
                            });
                          },
                        ),
                      ),
                  ],),
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
                  ),
              ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 4.7,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: mediaQueryData.size.width / 20,top: mediaQueryData.size.height / 50),
                              child: Text(ImprovementExamEnrollmentFormConstants.declarations,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                                  )
                              ),),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: mediaQueryData.size.width / 20, right: mediaQueryData.size.width / 20, top: mediaQueryData.size.height / 18, bottom: mediaQueryData.size.height / 50),
                              child: Text(ImprovementExamEnrollmentFormConstants.declarationsNote2,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  )
                              ),),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: mediaQueryData.size.height / 6, bottom: mediaQueryData.size.height / 50),
                              child: Checkbox(
                                activeColor: Colors.grey,
                                value: checkValue2,
                                onChanged: (bool value) {
                                  setState(() {
                                    checkValue2 = value;
                                  });
                                },
                              ),
                            ),
                          ],),
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
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: mediaQueryData.size.height / 110, bottom: mediaQueryData.size.height / 50),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: mediaQueryData.size.width / 80),
                              child:
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder:
                                    (context) => ImprovementExamEnrollmentPageView()));
                                  },
                                  child: Icon(Icons.arrow_circle_left_outlined, size: 50),
                                  style: TextButton.styleFrom(
                                    shape: CircleBorder(),
                                  ),
                                ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder:
                                (context) => ImprovExamEnrollSuccessPageView()));
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(mediaQueryData.size.width / 14, mediaQueryData.size.height / 90, mediaQueryData.size.width / 14, mediaQueryData.size.height/ 90),
                                margin: EdgeInsets.only(left: mediaQueryData.size.width / 7),
                                child: Text(ImprovementExamEnrollmentFormConstants.confirm,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )
                              ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0x75, 0x17, 0x1e),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Color.fromARGB(255, 0x75, 0x17, 0x1e)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0.1,
                                        blurRadius: 3.2,
                                      ),]
                                ),
                              ),),
                            ],
                            ),
                        ),
            ],
          ),),],
      ),],
    ),);
  }
}