
// token_service.dart

import 'package:shared_preferences/shared_preferences.dart';

import 'package:jwt_decoder/jwt_decoder.dart';

Future<void> saveToken(String token) async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString('access_token', token);

}
Future<void> saveName(String firstName) async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString('first_name', firstName);

}

Future<String?> getSavedToken() async {

  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('access_token');

}

Map<String, dynamic> decodeToken(String token) {

  return JwtDecoder.decode(token);

}