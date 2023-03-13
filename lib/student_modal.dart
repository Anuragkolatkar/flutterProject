class Student {
  int? rollno;
  String? name;
  int? marks;

  Student({this.name, this.marks, this.rollno});
}

List<Student> studentdata = [
  Student(name: "anu", marks: 200, rollno: 10),
  Student(name: "anuj", marks: 250, rollno: 11),
  Student(name: "sachine", marks: 300, rollno: 12),
  Student(name: "aali", marks: 350, rollno: 13),
];
