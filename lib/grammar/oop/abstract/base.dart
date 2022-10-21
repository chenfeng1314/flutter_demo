abstract class Base {
  void foo() {
    commonLogic1();
    diffLogic();
    commonLogic2();
  }

  void commonLogic1() {}

  void commonLogic2() {}

  void diffLogic();
}
