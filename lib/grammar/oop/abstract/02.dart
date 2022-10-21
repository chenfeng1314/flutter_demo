void main() {
  Exception exception = Exception('aa');
  print(exception.runtimeType);
  _Parent parent = _Sub();
  print(parent.runtimeType);
}

abstract class _Parent {
  factory _Parent() => _Sub();
}

class _Sub implements _Parent {}
