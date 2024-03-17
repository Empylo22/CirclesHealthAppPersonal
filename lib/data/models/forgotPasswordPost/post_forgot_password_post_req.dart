class PostForgotPasswordPostReq {
  String? email;

  PostForgotPasswordPostReq({this.email});

  PostForgotPasswordPostReq.fromJson(Map<String, dynamic> json) {
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (email != null) {
      data['email'] = email;
    }
    return data;
  }
}
