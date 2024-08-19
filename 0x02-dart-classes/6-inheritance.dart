import '6-password.dart';

class User extends Password{
  String? name;
  int? age;
  double? height;
  int? id;
  String? user_password;

  User({this.id, this.name, this.age, this.height, this.user_password}) : super(password: user_password);

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
      user_password: json['user_password'],
    );
  }

  @override
      String toString() {
        Password password = new Password(password: user_password);
        return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${password.isValid()})";
    }
}
