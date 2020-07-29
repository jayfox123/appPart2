import 'package:flutter/material.dart';



class CustomShowCard extends StatelessWidget {
  final String image;
  CustomShowCard({
    Key key, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.2),
            blurRadius: 10,
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
