String longestUniqueSubstring(String str) {
    int start = 0;
    int end = 0;
    int maxLen = 0;
    String result = "";
    Set<String> uniqueChars = {};

    while (end < str.length) {
        if (uniqueChars.contains(str[end])) {
            while (uniqueChars.contains(str[end])) {
                uniqueChars.remove(str[start]);
                start++;
            }
        }
        uniqueChars.add(str[end]);

        if ((end - start + 1) > maxLen) {
            maxLen = end - start + 1;
            result = str.substring(start, end + 1);
        }
        end++;
    }

    return result;
}
