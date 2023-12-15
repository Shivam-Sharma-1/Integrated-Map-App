import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../config/app_config.dart';
import '../response/login_response.dart';

class LoginService {
  final String username;
  final String password;

  LoginService(this.username, this.password);

  Future<LoginResponse> call() async {
    final result = await http.post(Uri.parse('${AppConfig.baseUrl}/login'),
        body: jsonEncode({
          'username': username,
          'password': password,
        }));
    return LoginResponse.fromJson(jsonDecode(result.body)['data']);
  }
}
