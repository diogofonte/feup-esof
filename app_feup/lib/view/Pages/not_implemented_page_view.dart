import 'package:flutter/material.dart';
import 'package:uni/view/Pages/evaluation_page_view.dart';

import 'general_page_view.dart';

class NotImplementedPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NotImplementedPageViewState();
}

class NotImplementedPageViewState extends GeneralPageViewState {
  @override
  Widget getBody(BuildContext context) {
    // TODO: implement getBody
    final ElevatedButtonThemeData returnButtonTheme = Theme.of(context).
    elevatedButtonTheme;
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Página em construção.',
            style: Theme.of(context).textTheme.headline3),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => EvaluationPageView()));
          },
            label: Text('Voltar'),
            icon: Icon(Icons.arrow_back),
            style: returnButtonTheme.style,
          )
        ],
      ),
    ),
    );
  }
}