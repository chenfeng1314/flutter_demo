void main() {
  _Document document = _Document();
  _Student student = _Student(document);
  student.event("2000 年 入学 XXXX 小学");
  student.event("2006 年 入学 XXXX 初中");
  student.event("2009 年 入学 XXXX 高中");
  student.event("2012 年 入学 XXXX 大学");
  String info = student.callDocument();
  print(info);
}

class _Student {
  _Document document;

  _Student(this.document);

  void event(String string) {
    document.records.add(string);
  }

  String callDocument() {
    return document.records.join("\n");
  }

  void died() {
    document.records.clear();
  }
}

class _Document {
  List<String> records = [];

  void addRecord(String string) {
    records.add(string);
  }
}
