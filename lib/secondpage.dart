import 'package:flutter/material.dart';
import 'package:myfruits/firstpage.dart';

class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              child: Image.asset(
                'assets/img/img3.png',
                height: 200,
                width: 700,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    'Welcome to',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Fruits & Vegetables',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.lightGreen[800],
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  Wrap(
                    children: <Widget>[
                      SessionCard(
                        press: () {},
                        nama: "Banana",
                        img: "assets/img/img1.png",
                      ),
                      SizedBox(
                        height: 130,
                      ),
                      SessionCard(
                          press: () {},
                          nama: "Tomato",
                          img: "assets/img/img2.png"),
                      SizedBox(
                        height: 130,
                      ),
                      SessionCard(
                          press: () {},
                          nama: "Potato",
                          img: "assets/img/img4.png"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final press;
  final String nama;
  final String img;
  const SessionCard({
    Key? key,
    this.press,
    required this.img,
    required this.nama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: Colors.grey),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 42,
                  width: 42,
                  child: Image.asset(img),
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  nama,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
