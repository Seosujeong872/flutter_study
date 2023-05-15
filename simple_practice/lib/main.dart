import 'package:flutter/material.dart';

void main() {
  runApp(const MyAlarm());
}

class MyAlarm extends StatefulWidget {


  const MyAlarm({Key? key}) : super(key: key);
  @override
  _MyAlarmState createState() => _MyAlarmState();
}
  class _MyAlarmState extends State<MyAlarm>{
  int _index = 0;
  void NextScreen (int num) {
    setState(() {
      _index = num;
    });
  }
  List _items = [
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyAlarm",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(

              alignment: Alignment.center,
              padding: EdgeInsets.all(40.0),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "16시간 37분후에 알람이 울립니다.",
                style: TextStyle(fontSize: 50.0,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.black87,
              alignment: Alignment.center,
              child: Text(
                "3월 14일 (화) 오전 7:00",
                style: TextStyle(fontSize: 20.0,  color : Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30 ),
              color: Colors.black87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.add, color: Colors.orangeAccent),
                  Icon(Icons.more_vert, color: Colors.orangeAccent),
                ],
              ),
            ),
            Column(

              children: [

                _buildItem("오전 7:00"),
                _buildItem("오전 7:30"),
                _buildItem("오후 5:00"),
              ],
            ),
            // Container(
            //   color: Colors.red,
            //   width: double.infinity,
            //   height: 30,
            // ),
          ],
        ),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: "알람", icon: Icon(Icons.alarm)),
            BottomNavigationBarItem(label: "세계시각", icon: Text("세계시각")),
            BottomNavigationBarItem(label: "스톱워치", icon: Text("스톱워치")),
            BottomNavigationBarItem(label: "타이머", icon: Text("타이머")),
          ],
          onTap: NextScreen,
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,

        ),
      ),
    );
  }
}

Widget _buildItem( String text) {
  return Column(
    children: [
      Container(
          margin: EdgeInsets.fromLTRB(30,10,30,10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),


          // width: double.infinity,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(

                height: 100,
                child: Text(text,style: TextStyle(fontSize: 20,color:Colors.black),
            )
            ),
            Container(

              child: Text(
                "월화수목금",
                style: TextStyle( color: Colors.black, fontSize: 20),
              ),


              ),
            Container(
                // color: Colors.white,
              child:
              Icon(Icons.toggle_on, color: Colors.green,size: 50),
            )

          ],
        )
        ),
      SizedBox(
        height: 10,
      ),
    ],
  );

}

