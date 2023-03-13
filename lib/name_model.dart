class NamesModel {
  String? name;
  int? age;
  String? prof;

  NamesModel({this.name, this.age, this.prof});

  NamesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    prof = json['prof'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['prof'] = this.prof;
    return data;
  }

  static map(Map<String, dynamic> Function(dynamic e) param0) {}

  static getListMap(List<NamesModel> name) {}
}
