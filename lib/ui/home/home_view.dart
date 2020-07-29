import 'package:flutter/material.dart';
import 'package:pdfviewProject/ui/home/home_body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: 500,
              left: 225,

              child: Opacity(
                opacity: 0.05,
                child: Image.asset("asset/img/starbucks-logo-png-1688.png"),
              ),
            ),
            CustomBodyHome(size: size),
          ],
        ),
      ),
    );
  }
}
