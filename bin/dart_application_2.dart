void main() {
  var strs = ["flower", "flow", "flight"];

  longestCommonPrefix(strs);
}

String longestCommonPrefix(List<String> strs) {
  //initialize the returned string
  var result = "";
  //sort the list in ascending order so the strs[0] will be the shortest in length
  strs.sort((a, b) => a.length.compareTo(b.length));
  print(strs);
  
  for (var i = 0; i < strs[0].length; i++) {
    //save the value of the first letter to compare in other strings
    var x = strs[0][i];
    for (var j = 0; j < strs.length; j++) {
      //the first not equal string means that all the previous are equal so will stop the loop and return the prev prifix
      if (strs[j][i] != x) {
        result = strs[0].substring(0, i);
        print(result);
        return result;
      }
      //if the condition didn't match this means the first word in the list is the longest common prefix
      result = strs[0];
    }
  }
  print(result);
  return result;
}
