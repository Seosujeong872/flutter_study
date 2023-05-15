import 'dart:convert';

import 'package:flutter_attr_busan/attr_dto.dart';
import 'package:http/http.dart' as http;

class AttrRepository{
  static Future<List<AttrDTO>?> getDTO() async{
    final String url = "https://apis.data.go.kr/6260000/AttractionService/getAttractionKr?serviceKey=6MQ8Qa5AchpKOPEiPgw1DkyW1%2F%2Fy2wJ%2BwyLCm1n3ZAYiQCqHmw2fxRuL%2F9%2FJBAKsRr6abtjzxpGUG18e8Wwa4g%3D%3D&pageNo=1&numOfRows=10&resultType=json";
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      dynamic json = jsonDecode(response.body);
      return AttrDTO.fromJsonList(json["getAttractionKr"]["item"]);
    }else{
      return null;
    }
  }
}

