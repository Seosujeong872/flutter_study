import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_project/post/model/dto/post_dto.dart';
import 'package:flutter_http_project/post/model/repository/post_repository.dart';
import 'package:flutter_http_project/post/view/pages/movie_item.dart';

class MoviePage extends HookWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listState = useState<List<PostDTOTable>>([]);

    useEffect((){
      MovieRepository.getDTO().then((value){
        if(value != null){listState.value = value;}
      });
    },[]);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: listState.value.map((e) => MovieItem(movieDTO: e)).toList() ,
        ),
      ),
    );
  }
}
