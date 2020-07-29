
import 'package:flutter/material.dart';
import 'package:pdfviewProject/ui/home/home_appbar.dart';
import 'package:pdfviewProject/ui/home/home_main_card.dart';
import 'package:pdfviewProject/ui/home/home_slidbar.dart';

class CustomBodyHome extends StatelessWidget {
  const CustomBodyHome({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 45,
          ),
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
          CustomSlidBarProduct(size: size),
          SizedBox(
            height: 35,
          ),
          Container(
            height: 400.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              children: <Widget>[
                CustomCardMain(size: size, image: "asset/img/nathan-dumlao-XOhI_kW_TaM-unsplash.jpg" ),
                CustomCardMain(size: size, image: "asset/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg"),
                CustomCardMain(size: size, image: "asset/img/nathan-dumlao-XOhI_kW_TaM-unsplash.jpg"),
                CustomCardMain(size: size, image: "asset/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
