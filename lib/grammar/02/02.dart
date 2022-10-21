void main() {
  List<_Egg> list = [];
  list.add(_Egg());
  // list.add(_TableTennis());
  _AClass<_Egg> eggType = _AClass(_Egg());
  _AClass<int> intType = _AClass(5);
  eggType.printType();
  intType.printType();
}

class _Egg {}

class _TableTennis {}

class _AClass<T> {
  final T memberT;

  _AClass(this.memberT);

  void printType() {
    print('当前对象类型: ${memberT.runtimeType}');
  }

  T getMemberT() => memberT;
}

class _BClass<T, V> {
  final T memberT;
  final V memberV;

  _BClass(this.memberT, this.memberV);

  void printType() {
    print('当前对象类型T:${memberT.runtimeType}'
        '当前对象类型V:${memberV.runtimeType}');
  }

  T getMemberT() => memberT;

  V getMemberV() => memberV;
}
