
// token_service.dart

import 'package:shared_preferences/shared_preferences.dart';

import 'package:jwt_decoder/jwt_decoder.dart';

Future<void> saveToken(String accessToken) async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString('accessToken', accessToken);

}
Future<void> saveName(String firstName) async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString('first_name', firstName);

}

Future<String?> getSavedToken() async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('accessToken');

}

Future<void> saveId(String id) async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString('id', id);

}
Future<String?> getSavedId() async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('id');

}


Map<String, dynamic> decodeToken(String token) {

  return JwtDecoder.decode(token);

}
