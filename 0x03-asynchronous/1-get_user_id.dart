import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  // Fetch the user data (this is a Future that resolves to a JSON string)
  String userData = await fetchUserData();

  // Parse the JSON string to a Map
  Map<String, dynamic> userMap = jsonDecode(userData);

  // Return the 'id' from the userMap
  return userMap['id'];
}
