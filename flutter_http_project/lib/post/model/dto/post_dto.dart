// post_dto.dart

// 테이블용
import 'package:flutter/foundation.dart';

class PostDTOTable {
  String rank; //글 번호
  String audiCnt;
  String movieNm;
  String openDt;

  PostDTOTable({
    required this.rank,
    required this.audiCnt,
    required this.movieNm,
    required this.openDt,
  });

  //팩토리
//생성자를 통해서 객체를 만들려고 하는데
//처리가 번거로울 경우
//어떠한 타입을 받아서 클래스 내부에서 객체를 생성해서
//리턴 해주기 위함

  factory PostDTOTable.fromJson(dynamic json) => PostDTOTable(
        rank: json["rank"],
        audiCnt: json["audiCnt"],
        movieNm: json["movieNm"],
        openDt: json["openDt"],
      );
  static List<PostDTOTable>fromJsonList(List jsonList){
    return jsonList.map((e) => PostDTOTable.fromJson(e)).toList();
  }
}

// 상세 페이지용
// class PostDTODetail {
//   int rank; //글 번호
//   int audiCnt
//   String movieNm;
//   String email;
//
//   PostDTODetail({
//     required this.id,
//     required this.name,
//     required this.email,
//   });
// }
