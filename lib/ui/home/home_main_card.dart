import 'package:flutter/material.dart';
import 'package:pdfviewProject/ui/show/show.dart';



class CustomCardMain extends StatefulWidget {
  final String image;
  final String nameProduct;
  final String subName;
  final String price;
  
  CustomCardMain({
    Key key,
    @required this.size, this.image, this.nameProduct, this.subName, this.price,
  }) : super(key: key);

  final Size size;

  @override
  _CustomCardMainState createState() => _CustomCardMainState();
}

class _CustomCardMainState extends State<CustomCardMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: widget.size.width * 0.5,
      height: widget.size.height * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.2),
            blurRadius: 15,
            // offset: Offset(15, 5))
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute( builder: (context) => ShowDetals() ));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Image.asset(
                 widget.image,
                width: widget.size.width * 0.5,
                height: widget.size.height * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Latte with Turmeric",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "Iced coffee",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                SizedBox(height: 45),
                Divider(  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
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
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
