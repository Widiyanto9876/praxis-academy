import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  int id;

  String name;
  String email;

  String avatar;

  User({this.id, this.name, this.email, this.avatar});

  factory User.createUser(Map<String,dynamic> object) {
    return User(
      id: object['id'],
      name: object['first_name'] + object ['last_name'],
      email: object['email'],
      avatar: object['avatar']
    );
  }

  static Future<List<User>> getAllUser(String page) async {
    String url = "https://reqres.in/api/users?page=" + page;
    var apiResult = await http.get(url);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for(int i=0; i < listUser.length; i++)
      users.add(User.createUser(listUser[i]));

    return users;
  }

}