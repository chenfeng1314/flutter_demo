import 'package:flutter_demo/grammar/08/02.dart';

typedef OnBiteCallBack = void Function(String name);
typedef h = int Function(int i, double d);

class _FishMan {
  OnBiteCallBack hook;

  _FishMan({required this.hook});
}

class _Pond {
  _FishMan fishMan;

  _Pond({required this.fishMan});

  void emitFish(String name) {
    fishMan.hook(name);
  }
}

class _Operation {
  OperationFun operationFun = (int a, int b) {
    return 1;
  };

  _Operation(this.operationFun);
}

void main() {
  _FishMan man = _FishMan(hook: (String name) {
    print("钓到一条$name");
  });

  _Pond pond = _Pond(fishMan: man);
  pond.emitFish("鲫鱼");
  _Operation operation = _Operation((int a, int b) {
    return a + b;
  });
}
