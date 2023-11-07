import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "BUGÜN NE YESEM?",
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

  void yemekleriYenile() {
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
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: yemekleriYenile,
                  child: Image.asset("assets/corba_$corbaNo.jpg")),
            ),
          ), // expanded ekrana sığmasını sağlar.
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: yemekleriYenile,
                  child: Image.asset("assets/yemek_$yemekNo.jpg")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: yemekleriYenile,
                  child: Image.asset("assets/tatli_$tatliNo.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}

