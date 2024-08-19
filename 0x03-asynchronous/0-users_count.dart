import '0-util.dart';

Future<void> usersCount() async {
  // Await the result from fetchUsersCount() which simulates an API call
  int count = await fetchUsersCount();

  print(count);
}
