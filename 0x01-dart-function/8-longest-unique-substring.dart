String longestUniqueSubstring(String str) {
  int maxLength = 0;
  int start = 0;
  int end = 0;
  Map<String, int> charIndex = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (charIndex.containsKey(char)) {
      start = start > charIndex[char]! + 1 ? start : charIndex[char]! + 1;
    }
    charIndex[char] = i;
    end = i;
    maxLength = maxLength > end - start + 1 ? maxLength : end - start + 1;
  }

  return str.substring(start, start + maxLength);
}
