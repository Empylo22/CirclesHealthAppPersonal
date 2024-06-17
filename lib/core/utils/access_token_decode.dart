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

Future<void> printSavedOtp() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
}

Future<void> saveOtp(String otp) async {
  // Get shared preferences instance
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // Save OTP to shared preferences
  await prefs.setString('otp', otp);
}

Future<String?> getSavedOtp() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('otp');
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
