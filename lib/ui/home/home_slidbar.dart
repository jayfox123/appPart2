import 'package:flutter/material.dart';

class CustomSlidBarProduct extends StatelessWidget {
  const CustomSlidBarProduct({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Starbucks Coffee",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 27),
        ),
        SizedBox(height: 40),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            physics: ScrollPhysics(),
            children: <Widget>[
              CustomCard(size),
              SizedBox(width: 10),
              CustomCardWhite(size, 17, "Espresso"),
              SizedBox(width: 10),
              CustomCardWhite(size, 22, "Espresso"),
            ],
          ),
        ),
      ],
    );
  }

  Container CustomCard(Size size) {
    return Container(
      padding: EdgeInsets.all(20),
      width: size.width * 0.4,
      height: size.height * 0.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal,
          boxShadow: [
            BoxShadow(color: Colors.teal.withOpacity(0.3), blurRadius: 20)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "50",
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text("All products",
              style: TextStyle(color: Colors.white, fontSize: 15))
        ],
      ),
    );
  }

  Container CustomCardWhite(Size size, int number, String txt) {
    return Container(
      padding: EdgeInsets.all(20),
      width: size.width * 0.4,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            number.toString(),
            style: TextStyle(
                fontSize: 35,
                color: Color(0xFF333333),
                fontWeight: FontWeight.bold),
          ),
          Text(txt, style: TextStyle(color: Color(0xFF333333), fontSize: 15))
        ],
      ),
    );
  }
}
