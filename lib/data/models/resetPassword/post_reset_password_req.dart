class PostResetPasswordReq {
  String? code;
  String? newPassword;

  PostResetPasswordReq({this.code, this.newPassword});

  PostResetPasswordReq.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    newPassword = json['new_password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (code != null) {
      data['code'] = code;
    }
    if (newPassword != null) {
      data['new_password'] = newPassword;
    }
    return data;
  }
}
