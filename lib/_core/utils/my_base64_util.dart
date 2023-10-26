import 'dart:convert';

String base64Encode(String pickImage) {
  String encode = base64.encode(utf8.encode(pickImage));
  print(encode); //bWVzc2FnZSDsnoXri4jri6QuLUJBU0U2NA==

  return encode;
}

// 디코딩화 코드
List<int> base64Decode(String encoded) {
  List<int> decode = base64.decode(encoded);
  print(decode);
  // print(utf8.decode(decode)); //
  return decode;
}
