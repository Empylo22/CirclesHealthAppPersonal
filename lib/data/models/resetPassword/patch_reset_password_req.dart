class PatchResetPasswordReq {
  String? token;
  String? newPassword;

  PatchResetPasswordReq({this.token, this.newPassword});

  PatchResetPasswordReq.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    newPassword = json['newPassword'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (token != null) {
      data['code'] = token;
    }
    if (newPassword != null) {
      data['newPassword'] = newPassword;
    }
    return data;
  }
}
