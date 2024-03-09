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
        ], // Children
      ),
    );
  }
}
