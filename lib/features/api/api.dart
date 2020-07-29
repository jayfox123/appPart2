import 'dart:convert' as json;


import 'package:http/http.dart' as http;
import 'package:pdfviewProject/features/model/api_model.dart';

class Api{
  List<ApiModelImage> allImage = [];
  Future<void> getallImage() async{
    String url = "https://pixabay.com/api/?key=14166643-8f5d786114049d58d56d26c6a";
    var respone = await http.get(url);
    var dataJson = json.jsonDecode( respone.body );
    var data = dataJson["hits"];
    data.forEach((o){
      allImage.add(
        ApiModelImage(
          user: o["user"],
          largeImageURL: o["largeImageURL"],
          pageURL: o["pageURL"],
          views: o["views"],
        )
      );
    });
  }
}