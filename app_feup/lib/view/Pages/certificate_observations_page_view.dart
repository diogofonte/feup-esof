import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'general_page_view.dart';

class CertificateObservationsPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CertificateObservationsPageViewState();
}

class CertificateObservationsPageViewState extends GeneralPageViewState {
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
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 25,
                ),
                Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Passe sub23@superior.tp',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline6
                          .apply(
                        fontSizeDelta: 7,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 35,
                ),
                Container(
                  margin: EdgeInsets.only(left: mediaQueryData.size.width / 15),
                  alignment: Alignment.topLeft,
                  child: Text('Observações',
                    style: TextStyle(
                      color: Color.fromRGBO(194, 194, 194, 1.0),
                      fontSize: 20,
                      fontWeight: FontWeight.w200
                    ),
                  ),
                  ),
              ],),),
        ],),);
  }
}