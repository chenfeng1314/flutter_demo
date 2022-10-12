class NoElementInDictException implements Exception {
  final String arg;

  NoElementInDictException(this.arg){}

  @override
  String toString() {
    return "empty $arg mean in dict";
  }
}
