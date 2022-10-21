V? find<K, V>(K k, Map<K, V> map) {
  return map[k];
}

void main() {
  Map<int, String> map = {1: "aa", 2: "bb"};
  var s = find(2, map);
  print(s);
}
