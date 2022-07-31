import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:july31/model.dart';

getUser() async {
  List users = [];
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');

  var response = await http.get(url);
  var data = jsonDecode(response.body);
  for (var i in data) {
    users.add(UserModel.fromJson(i));
  }
  // print(data);
  return users;
}
