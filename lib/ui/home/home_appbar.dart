import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image(
          image: ExactAssetImage(
            "asset/img/arrow.png",
          ),
          width: 25,
          height: 25,
          fit: BoxFit.contain,
        ),
       Stack(
         children: <Widget>[
            GestureDetector(
          onTap: () {},
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.teal.withOpacity(0.2),
                  blurRadius: 10,
                )
              ],
              color: Colors.teal,
              shape: BoxShape.circle,
            ),
            child: Image(
              image: ExactAssetImage(
                "asset/img/bag (1).png",
              ),
              width: 10,
              height: 10,
              color: Colors.white,
              fit: BoxFit.none,
            ),
          ),
        ),
        Positioned(
          top: 20,
          right:20,
          child: Container( 
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Center(child: Text("8", style: TextStyle( color: Colors.white ),)),
           ),
        )
         ],
       )

      ],
    );
  }
}
