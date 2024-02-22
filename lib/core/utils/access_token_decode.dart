import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:empylo/data/models/loginUser/post_login_user_resp.dart';

String extractUserId(String accessToken) {
  try {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(accessToken);

    // Assuming your user ID is stored in the 'sub' claim
    return decodedToken['id'].toString();
  } catch (e) {
    print('Error decoding JWT: $e');
    return '';
  }
}
