class PostSignupUserReq {
  late String email;
  late String password;
  late bool termsConditions;

  PostSignupUserReq({
    required this.email,
    required this.password,
    required this.termsConditions,
  });

  PostSignupUserReq.fromJson(Map<String, dynamic> json) {
    email = json['email'] ?? '';
    password = json['password'] ?? '';
    termsConditions = json['termsConditions'] ?? false;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'termsConditions': termsConditions,
    };
  }
}
