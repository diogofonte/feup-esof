import 'package:flutter/material.dart';
import 'package:uni/view/Pages/evaluation_page_view.dart';
import 'general_page_view.dart';
import 'improv_exam_enrollment_form_page_view.dart';

class ImprovementExamEnrollmentPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ImprovementExamEnrollmentPageViewState();
}

class ImprovementExamEnrollmentPageViewState extends GeneralPageViewState {

  TableRow tableRowContent(String text1, String text2, BorderRadius radius) {
    return TableRow(
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: radius,
        ),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Text(text1, textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4.
                apply(fontSizeDelta: -6)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Text(text2,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4.
                apply(fontSizeDelta: -6))
          )
        ]
    );
  }

  TableRow tableRowHeader(String text1, String text2) {
    return TableRow(
        decoration: BoxDecoration(
            color: Theme.of(context).hintColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
              topRight: Radius.circular(15)),
        ),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Text('Dia do exame', textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3.
                apply(fontSizeDelta: -4)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Text('Limite para efetuar a inscrição',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3.
                apply(fontSizeDelta: -5))
          )

        ]);
  }

  Padding enrollmentText(String major, String numberOfUC) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10,0,10,0),
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:
                (context) => ImprovementExamEnrollmentFormPageView()));
          },
          child: Text('Exame para melhoria de classificação - '+major+' - '
              +numberOfUC+'.ª UC', style: Theme.of(context).textTheme.
          headline3.apply(fontSizeDelta: -6),
        ),
      )
    );
  }



  Table deadlinesTable() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {1: FractionColumnWidth(.6)},
      border: TableBorder.all(color: Theme.of(context).dividerColor,
          width: MediaQuery.of(context).size.width*0.005,
          borderRadius: BorderRadius.circular(15)),
      children: [
        tableRowHeader('Dia do exame',
            'Limite para efetuar a inscrição'),
        tableRowContent('Segunda-feira', 'Terça-feira anterior',
            BorderRadius.zero),
        tableRowContent('Terça-feira', 'Quarta-feira anterior',
            BorderRadius.zero),
        tableRowContent('Quarta-feira', 'Quinta-feira anterior',
            BorderRadius.zero),
        tableRowContent('Quinta-feira', 'Sexta-feira anterior',
            BorderRadius.zero),
        tableRowContent('Sexta-feira', 'Segunda-feira anterior',
            BorderRadius.only(bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)))
      ],
    );
  }

  @override
  Widget getBody(BuildContext context) {
    final pageTitle = 'Melhorias';
    return ListView(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
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
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40, left: MediaQuery.of(context).size.width / 6),
                        child: RichText(
                            text: TextSpan(
                              text: pageTitle,
                              style: Theme.of(context).textTheme.headline6.apply(
                                fontSizeDelta: 8,
                                //fontWeightDelta: 3,
                              ),
                            )
                        ),
                      ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0,
                    MediaQuery.of(context).size.height*0.035, 0, 0),
                height: MediaQuery.of(context).size.height*0.46,
                width: MediaQuery.of(context).size.width*0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.0,
                      spreadRadius: 0.1
                    )
                  ]
                ),
                child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text('Prazos para inscrição',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.left)),
                      Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                          child: deadlinesTable()
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text('*pedidos efetuados ao fim de semana são '
                            'considerados como tendo sido efetuados no dia '
                            'útil seguinte', style: Theme.of(context).
                          textTheme.bodyText2.apply(fontSizeDelta: -4),
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.15,
                          width: MediaQuery.of(context).size.width*0.85,
                          decoration: BoxDecoration(
                            color: Theme.of(context).hintColor,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child:
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                              child: Text('Após submeteres cada formulário, '
                              'irás receber uma mensagem no email indicado no '
                              'mesmo, com a data limite para o pagamento do '
                              'respetivo emolumento, que está na tua conta '
                              'corrente.', style: Theme.of(context).textTheme.
                          bodyText2.apply(fontSizeDelta: -3), textAlign:
                          TextAlign.center,)),
                        ),
                      )
                    ]
                    )
            ),
              Container(
                  margin: EdgeInsets.fromLTRB(0,
                  MediaQuery.of(context).size.height*0.035, 0, 0),
                  height: MediaQuery.of(context).size.height*0.46,
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 1.0,
                          spreadRadius: 0.1
                        )
                    ]
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text('Formulários de Inscrição - 2021/22 2S',
                            style: Theme.of(context).
                            textTheme.headline3.apply(fontSizeDelta: -1)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text('Deverá preencher um formulário por cada '
                          'exame!', style: Theme.of(context).textTheme.
                           bodyText2.apply(fontSizeDelta: -2)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Container(
                          height: MediaQuery.of(context).size.height*0.36,
                          decoration:
                          BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.black,
                                    blurRadius: 1.0,
                                    spreadRadius: 0.1
                                )
                              ]
                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            enrollmentText('M.EIC', '1'),
                            enrollmentText('M.EIC', '2'),
                            enrollmentText('M.EIC', '3'),
                            enrollmentText('L.EIC', '1'),
                            enrollmentText('L.EIC', '2'),
                            enrollmentText('L.EIC', '3')
                          ],
                        ),
                      )
                    )
                  ],
                ),
              )
            ]
          )
        ),
      ],
    );
  }
}