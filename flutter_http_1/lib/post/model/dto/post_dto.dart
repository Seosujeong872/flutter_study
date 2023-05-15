// post_dto.dart

// 테이블용
import 'package:flutter/foundation.dart';

class PostDTOTable{
  int userId; //유저번호
  int id; //글 번호
  String title;
  PostDTOTable({required this.userId,required this.id,required this.title});

  //팩토리
//생성자를 통해서 객체를 만들려고 하는데
//처리가 번거로울 경우
//어떠한 타입을 받아서 클래스 내부에서 객체를 생성해서
//리턴 해주기 위함

//생성자를 이용한 팩토리 함수
  factory PostDTOTable.fromJson(dynamic json) =>
      PostDTOTable(userId: json["userId"], id: json["id"], title: json["title"]);

  //팩토리를 이용한 함수
  static List<PostDTOTable>fromJsonList(List jsonList){
    return jsonList.map((json) => PostDTOTable.fromJson(json)).toList();

  }

}



// 상세 페이지용
class PostDTODetail {
  int userId; //유저번호
  int id; //글 번호
  String title; // 제목
  String body;

  PostDTODetail({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,

  });// 내용

  factory PostDTODetail.fromJson(dynamic json) => PostDTODetail(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
  );

}