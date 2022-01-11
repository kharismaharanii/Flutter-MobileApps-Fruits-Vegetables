import 'package:flutter/material.dart';
import 'package:myfruits/firstpage.dart';
import 'package:myfruits/secondpage.dart';

class firstPage extends StatefulWidget {
  @override
  _firstPage createState() => _firstPage();
}

class _firstPage extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.white,
                ],
                stops: [0.1, 0.9],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 40),
            child: Text(
              'FRUITS & VEGETABLES',
              style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 65),
            child: Container(
              child: Image.asset('assets/img/img6.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 650, left: 90),
            child: ElevatedButton(
              child: Text('Get Started!'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return secondPage();
                }));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.green[400],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
