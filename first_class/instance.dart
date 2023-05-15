// 클래스 - 대상의 설계도 and 사용 설명서
class Cat {
  // 필드
  String name;

  // 메소드
  void say() {
    print("야옹");
  }

  // 생성자
  Cat(this.name) {
    print("${this.name}가 태어납니다");
  }
}

void main(List<String> args) {
  // 오브젝트 - 대상의 타입
  Cat cat;

  // 인스턴스 - 실체화된 대상
  new Cat("나비");
}
