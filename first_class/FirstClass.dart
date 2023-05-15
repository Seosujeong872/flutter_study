// 1급 객체란?
// 아래 3 가지조건을 충족한다면 1급 객체라고 할수 있습니다.

// 변수나 데이타에 할당 할 수 있어야 한다.
// 객체의 인자로 넘길 수 있어야 한다.
// 객체의 리턴값으로 리턴 할수 있어야 한다.

String str = "aa";

Function hello = () {
  print("hello");
};

Function runFunction = (Function run) {
  run();
};

void main(List<String> args) {
  print(str);
  hello();
  runFunction(() {
    print("안녕하세요");
  });
}
