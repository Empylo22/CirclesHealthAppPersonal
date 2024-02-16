class PostSignupUserReq {
  String? email;
  String? password;
  bool? termsConditions;

  PostSignupUserReq({this.email, this.password, this.termsConditions});

  PostSignupUserReq.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    termsConditions = json['termsConditions'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (email != null) {
      data['email'] = email;
    }
    if (password != null) {
      data['password'] = password;
    }
    if (termsConditions != null) {
      data['termsConditions'] = termsConditions;
    }
    return data;
  }
}
