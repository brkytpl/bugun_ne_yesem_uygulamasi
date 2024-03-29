import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün çorbası',
    'Yoğurt çorbası'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru fasulye',
    'İçli köfte',
    'Izgara balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekeleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  splashColor: Colors.black,
                  onPressed: yemekeleriYenile,
                  child: Image.asset('assets/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  splashColor: Colors.black,
                  onPressed: yemekeleriYenile,
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(width: 200,
              child: Divider(
            height: 5,
            color: Colors.black,
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  splashColor: Colors.black,
                  onPressed: yemekeleriYenile,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(tatliAdlari[tatliNo-1],style: TextStyle(fontSize: 20),),
          Container(width:200,child: Divider(height: 5,color: Colors.black,))
        ], // Children
      ),
    );
  }
}
