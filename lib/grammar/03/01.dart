void main(){
  String? name = null;
  say(name);
  print(name is Object);
  print(name is String);
  print(name is Null);
}

void say(String? name){
  print("我的名字是:$name,有 ${name?.length} 个字");
}