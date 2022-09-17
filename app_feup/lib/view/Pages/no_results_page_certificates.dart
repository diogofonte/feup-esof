import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'general_page_view.dart';

class noResultsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => noResultsState();
}

class noResultsState extends GeneralPageViewState {
  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container (
        margin: EdgeInsets.fromLTRB(0, 0, 0, mediaQueryData.size.height / 20),
        child: Stack(
            children: [
              Center(
                //Page title
                  child: Column(
                      children: [
                        SizedBox(
                          height: mediaQueryData.size.height / 25,
                        ),
                        Container(
                            child: RichText(
                                text: TextSpan(
                                    text: 'Sem resultados',
                                    style:
                                    Theme.of(context).textTheme.headline6.apply(fontSizeDelta: 7)
                                )
                            )
                        )
                      ])),
              Center(
                //average, ects and curricular units
                  child: Column(
                      children: [
                        SizedBox(
                          height: mediaQueryData.size.height / 8.5,
                        ),
                        Container(
                            height: mediaQueryData.size.height / 2.5,
                            width: mediaQueryData.size.width / 1.1,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(30),
                            child: Text('Não existem resultados disponíveis',
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context).textTheme.headline3.
                                      apply(fontSizeDelta: 8),
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
                            )),
                      ]))
            ]));
  }
}