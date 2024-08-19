import '2-util.dart';

Future<void> getUser() async {
  try {
    // Attempt to fetch the user data
    String user = await fetchUser();
    
    // Print the user's string representation if successful
    print(user);
  } catch (error) {
    // Catch any errors and print the error message
    print('error caught: $error');
  }
}
