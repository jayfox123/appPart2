import 'package:flutter/material.dart';
import 'package:pdfviewProject/ui/home/home_appbar.dart';
import 'package:pdfviewProject/ui/show/show_card_slidbar.dart';
import 'package:pdfviewProject/ui/show/show_detals_price.dart';
import 'package:pdfviewProject/ui/show/show_slidbar.dart';
import 'package:pdfviewProject/ui/show/show_text_detals.dart';

class ShowDetals extends StatefulWidget {
  @override
  _ShowDetalsState createState() => _ShowDetalsState();
}

class _ShowDetalsState extends State<ShowDetals> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 45,
            ),
            CustomAppBar(),
            SizedBox(height: 30),
            CustomslidBar(),
            CustomDetalsAboutProduct(),
            SizedBox(height: 30),
            CustomItemOrDetels(),
            SizedBox(height: 10),
            CustonButtonToOrder(size)
          ],
        ),
      ),
    );
  }

  Container CustonButtonToOrder(Size size) {
    return Container(
      width: size.width * 0.8,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.teal,
          boxShadow: [
            BoxShadow(color: Colors.teal.withOpacity(0.3), blurRadius: 10)
          ]),
      child: Center(
        child: Text(
          "Add to Order",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
