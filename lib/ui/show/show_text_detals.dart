import 'package:flutter/material.dart';



class CustomDetalsAboutProduct extends StatelessWidget {
  const CustomDetalsAboutProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox( height: 20, ),
        Text(
          "Iced Coffee",
          style: TextStyle(
            color: Colors.black.withOpacity(0.3),
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
        SizedBox( height: 20, ),
        Text(
          "Latte With Turemeric",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox( height: 20, ),
        Text(
          " This warming drink is magge by \n sreaming milk with aromatic turmeric\npowder and spices and poured over\nespresso - bring a new teist to the\nmuch-loved latte.  ",
          style: TextStyle(
            color: Colors.black.withOpacity(0.3),
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
