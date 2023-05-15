import 'package:flutter/material.dart';
import 'package:flutter_http_project/post/model/dto/post_dto.dart';

class MovieItem extends StatelessWidget {
  final PostDTOTable movieDTO;

  const MovieItem({Key? key, required this.movieDTO}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text("${movieDTO.rank}"),
          Text("${movieDTO.audiCnt}"),
          Text("${movieDTO.movieNm}"),
          Text("${movieDTO.openDt}"),

        ],
      ),
    );
  }
}
