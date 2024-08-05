import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "";
  int maxLength = 0;


  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);

      if (isPalindrome(substring) && substring.length > maxLength) {
        longest = substring;
        maxLength = substring.length;
      }
    }
  }

  return maxLength > 0 ? longest : "none";
}
