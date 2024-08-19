import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;

  String? _user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? user_password,
  }) : _user_password = user_password, super(password: user_password);

  String? get user_password => _user_password;

  set user_password(String? newPassword) {
    _user_password = newPassword;
    password = newPassword;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': _user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}
