class MyClass {
    static String str = "aa";

    static void hello() {
        System.out.println("hello");
    }

    static void runFunction(MyInterface a) {
        a.myFunction();
    }
}

interface MyInterface {
    void myFunction();
}

public class FirstClass {
    public static void main(String[] args) {
        System.out.println(MyClass.str);
        MyClass.hello();
        MyClass.runFunction(new MyInterface() {
            @Override
            public void myFunction() {
                System.out.println("인터페이스 커스텀");
            }
        });
    }
}
