import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:flutter_bootcamp_two/session_twelve/user_model.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<UserModel> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('https://dummyjson.com/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'password': password,
        'expiresInMins': 30,
      }),
    );
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      print(response.body.toString());
      return UserModel.fromJson(data);
    } else {
      throw Exception(data['message'] ?? "Login fail");
    }
  }
}
