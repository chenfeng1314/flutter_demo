void main() {
  var male = GenderType.male;
  print(male.name);
  List<GenderType> values = GenderType.values;
  print(values);
  var str = showInfoByGenderType(GenderType.male);
  print(str);
}

String showInfoByGenderType(GenderType type) {
  switch (type) {
    case GenderType.male:
      return "男性";
    case GenderType.female:
      return "女性";
    case GenderType.secrecy:
      return "保密";
  }
}

enum GenderType { male, female, secrecy }
