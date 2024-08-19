import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try {
        String userData = await fetchUserData();
        String userName = jsonDecode(userData)["username"];
        return "Hello $userName";
    } catch (error) {
        return "error caught: $error";
    }
}

Future<String> loginUser() async {
    try {
        bool isLoggedIn = await checkCredentials();
        print("There is a user: $isLoggedIn");
        if (!isLoggedIn) {
            return "Wrong credentials";
        }
        return await greetUser();
    } catch (error) {
        return "error caught: $error";
    }
}
