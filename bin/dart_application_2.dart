void main() {
  var strs = ["flower", "flow", "flight"];

  longestCommonPrefix(strs);
}

String longestCommonPrefix(List<String> strs) {
  var result = "";
  strs.sort((a, b) => a.length.compareTo(b.length));
  print(strs);
  for (var i = 0; i < strs[0].length; i++) {
    var x = strs[0][i];
    for (var j = 0; j < strs.length; j++) {
      if (strs[j][i] != x) {
        result = strs[0].substring(0, i);
        print(result);
        return result;
      }
      result = strs[0].substring(0, strs[0].length);
    }
  }
  print(result);
  return result;
}
