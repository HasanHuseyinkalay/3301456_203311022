import 'package:bilgi/test_veri.dart';
import 'package:flutter/material.dart';

import 'constructor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  const SoruSayfasi({Key? key}) : super(key: key);

  @override
  State<SoruSayfasi> createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  Test_veri test1 = Test_veri();

  int soruIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test1.soruBankasi[soruIndex].soruMetni,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 4.0,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Text(
                            'FALSE',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            setState(() {
                              test1.soruBankasi[soruIndex].soruYaniti == false
                                  ? secimler.add(dogruIconu)
                                  : secimler.add(yanlisIconu);
                              soruIndex++;
                              // secimler.add(yanlisIconu);
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Text(
                            'TRUE',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            setState(() {
                              test1.soruBankasi[soruIndex].soruYaniti == true
                                  ? secimler.add(dogruIconu)
                                  : secimler.add(yanlisIconu);
                              //if (yanitlar[soruIndex] == true) {

                              soruIndex++;
                              //secimler.add(dogruIconu);
                            });
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
