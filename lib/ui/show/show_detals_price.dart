import 'package:flutter/material.dart';


class CustomItemOrDetels extends StatelessWidget {
  const CustomItemOrDetels({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Quantiy",
              style: TextStyle(fontWeight: FontWeight.w700)),
          Row(
            children: <Widget>[
              Text("8"),
              SizedBox( width: 5, ),
              Column(
                children: <Widget>[
                  Icon( Icons.keyboard_arrow_up , size: 13 ),
                  Icon( Icons.keyboard_arrow_down , size: 13 ),
                ],
              )
            ],
          )
        ],
      ),
    ),
    Divider(),
    Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Cost", style: TextStyle(fontWeight: FontWeight.w700)),
          Row(
            children: <Widget>[
              Image.asset(
                "asset/img/euro.png",
                width: 20,
              ),
              Text(
                "2.99",
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ],
          ),
        ],
      ),
    )
      ],
    );
  }
}
