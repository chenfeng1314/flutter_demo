import 'package:flutter_demo/grammar/branch/exception/NoElementInDictException.dart';

void main() {
  try {
    getMean('about');
  } on NoElementInDictException catch (e, s) {
    print('NoElementInDictException: ${e.toString()}');
  } catch (e, s) {
    print('${e.runtimeType}:${e.toString()}');
    print('${s.runtimeType}:${s.toString()}');
  } finally {
    print("finally bloc call");
  }
}

String getMean(String arg) {
  Map<String, String> dict = {"card": "卡片", "but": "但是"};
  String? result = dict[arg];
  if (result == null) {
    throw NoElementInDictException("empty $arg mean in dict");
  }
  return result;
}
