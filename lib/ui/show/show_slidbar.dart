import 'package:flutter/material.dart';
import 'package:pdfviewProject/ui/show/show_card_slidbar.dart';



class CustomslidBar extends StatelessWidget {
  const CustomslidBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CustomShowCard( image: "asset/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg", ),
          CustomShowCard( image: "asset/img/nathan-dumlao-XOhI_kW_TaM-unsplash.jpg", ),
          CustomShowCard( image: "asset/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg", ),
          CustomShowCard( image: "asset/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg", ),
        ],
      ),
    );
  }
}
