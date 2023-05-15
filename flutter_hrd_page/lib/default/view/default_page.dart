import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hrd_page/default/widgets/default_first_item.dart';
import 'package:flutter_hrd_page/default/widgets/default_second_item.dart';

// 페이지 내부의 상태를 관리하기 위해
// HookWidget
// 사용할 수 있는 Hook
// useState
// useEffect 등이 있다.
// Hook은 build 함수 안에 적는다.
class DefaultPage extends HookWidget {
  DefaultPage({Key? key}) : super(key: key);

  List widgetItems = [
    ()=>DefaultFristItem(),
    ()=>DefaultSecondItem(),
  ];

  @override
  Widget build(BuildContext context) {
    print("DefaultPage빌드됨");
    final navIndex = useState(0);


    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("나의 정보")),
        actions: [


            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.move_to_inbox),
          ),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int idx){
          navIndex.value = idx;
        },
        currentIndex: navIndex.value,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined
          ),
            label: "나의 정보"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.cabin
          ),
            label: "다른 정보"
          ),

          
          
      ],
    ),
      body: SafeArea(
        child: widgetItems[navIndex.value](),
        ),
      );

  }
}
