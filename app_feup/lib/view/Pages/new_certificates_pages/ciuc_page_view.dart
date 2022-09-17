import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uni/view/Pages/general_page_view.dart';
import 'package:uni/view/Pages/new_certificate_page_view.dart';

import '../../../controller/parsers/parser_certificates.dart';
import '../certificate_request_success_page_view.dart';

class NewCIUCCertificatePageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NewCIUCCertificatePageViewState();
}

class NewCIUCCertificatePageViewState extends GeneralPageViewState{

  bool booleanPrazoEmissao = false;
  bool booleanTipoDeEnvio = false;
  bool booleanQuantidade = false;

  static GlobalKey<FormState> _CertificateKey1 = new GlobalKey<FormState>();
  static GlobalKey<FormState> _CertificateKey2 = new GlobalKey<FormState>();
  Key _amountKey = new GlobalKey();
  Key _observationsKey = new GlobalKey();

  String shippingType;

  @override
  Widget getBody(BuildContext context){
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Row(
                  children: [
                    Center(
                      child: Align(
                        alignment: Alignment(-1,-0.9),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => NewCertificatePageView()));
                          },
                          child: Icon(Icons.arrow_back_sharp, size: 30),
                          style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Column(
                        children: [
                          title('Certidão de Inscrição', context),
                          title('em Unidades Curriculares', context),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Container(
                  alignment: Alignment.topCenter,
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
                      text('Prazo de emissão: (*)', -0.80, -0.95, 20,
                          Color.fromARGB(255, 0x75, 0x17, 0x1e)),
                      Align(
                        alignment: Alignment(-0.90, -0.85),
                        child: Checkbox(
                            activeColor: Colors.grey,
                            value: booleanPrazoEmissao,
                            onChanged: (bool checked){
                              setState(() {
                                booleanPrazoEmissao = checked;
                              });
                            }
                        ),
                      ),
                      text('180 dias úteis', -0.5, -0.805, 16,
                          Color.fromARGB(255, 0x30, 0x30, 0x30)),
                      text('Quantidade: (*)', -0.85, -0.65, 20,
                          Color.fromARGB(255, 0x75, 0x17, 0x1e)),
                      Align(
                        alignment: Alignment(-0.80, -0.65),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                            //bottom: 100,
                            left: 25,
                            right: 25,
                          ),
                          child: Form(
                            key: _CertificateKey1,
                            child:TextFormField(
                              onChanged: (String text){
                                setState(() {
                                  if(text != null){
                                    booleanQuantidade = true;
                                  } else {
                                    booleanQuantidade = false;
                                  }
                                });
                              },
                              key: _amountKey,
                              textAlignVertical: TextAlignVertical.center,
                              obscureText: false,
                              maxLines: 1,
                              decoration: InputDecoration(
                                isCollapsed: true,
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Color.fromARGB(255, 0xEA, 0xEA, 0xEA),
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
                      ),
                      text('Tipo de envio: (*)', -0.83, -0.30, 20,
                          Color.fromARGB(255, 0x75, 0x17, 0x1e)),
                      Align(
                        alignment: Alignment(-0.80, -0.23),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                            //bottom: 100,
                            left: 25,
                            right: 115,
                          ),
                          child: DropdownButton(
                            hint: Text(
                              'tipo de envio',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0x30, 0x30, 0x30),
                              ),
                            ),
                            iconDisabledColor: Color.fromARGB(255, 0x30, 0x30, 0x30),
                            iconEnabledColor: Color.fromARGB(255, 0x30, 0x30, 0x30),
                            isExpanded: true,
                            underline: SizedBox(),
                            alignment: Alignment.centerRight,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            value: shippingType,
                            onChanged: (newValue) {
                              setState(() {
                                shippingType = newValue;
                                booleanTipoDeEnvio = true;
                              });
                            },
                            items: CertificateStub().getShippingOptions().map((valueItem) {
                              return DropdownMenuItem(
                                  child: Text(
                                    valueItem,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0x30, 0x30, 0x30),
                                    ),
                                  ),
                                  value: valueItem
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      text('Observações:', -0.83, 0.10, 20,
                          Color.fromARGB(255, 0x75, 0x17, 0x1e)),
                      Align(
                        alignment: Alignment(-0.80, 0.20),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                            //bottom: 100,
                            left: 25,
                            right: 25,
                          ),
                          child: Form(
                            key: _CertificateKey2,
                            child:TextFormField(
                              key: _observationsKey,
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
                      ),
                      Align(
                        alignment: Alignment(0, 0.70),
                        child: ElevatedButton(
                          onPressed: () {
                            if(booleanTipoDeEnvio && booleanQuantidade && booleanQuantidade){
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => CertificateRequestSuccessPageView()));
                            }
                          },
                          child: Text(
                            'Submeter',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container title(String string, BuildContext context){
  return Container(
    child: RichText(
        text: TextSpan(
          text: string,
          style: Theme.of(context).textTheme.headline6.apply(
            fontSizeDelta: 8,
            //fontWeightDelta: 3,
          ),
        )
    ),
  );
}

Align text(String string, double x, double y, double size, Color color){

  return Align(
    alignment: Alignment(x,y),
    child: Text(
      string,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400, //.bold ou .w600
        color: color,
      ),
    ),
  );
}