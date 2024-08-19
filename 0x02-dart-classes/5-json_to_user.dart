class User {
  String? name;
  int? age;
  double? height;
  int? id;

  User({this.id, this.name, this.age, this.height});

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "height": height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      height: json['height'],
    );
  }

  @override
      String toString() {
        return "User(id : $id ,name: $name, age: $age, height: $height)";
    }
}
