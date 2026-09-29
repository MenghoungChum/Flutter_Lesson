class StudentModel {
  int? id;
  int age;
  String name;
  String gender;
  String email;
  String phone;

  StudentModel({
    this.id,
    required this.age,
    required this.name,
    required this.gender,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "age": age,
      "gender": gender,
      "email": email,
      "phone": phone,
    };
  }

  factory StudentModel.toDart(Map<String, dynamic> map) {
    return StudentModel(
      id: map['id'],
      age: map['age'],
      name: map['name'],
      gender: map['gender'],
      email: map['email'],
      phone: map['phone'],
    );
  }
}
