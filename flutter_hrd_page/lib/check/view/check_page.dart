import 'package:flutter/material.dart';
class CheckPage extends StatelessWidget {
  const CheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text("체크페이지"),
          ),
        ),
      ),
    );
  }
}
