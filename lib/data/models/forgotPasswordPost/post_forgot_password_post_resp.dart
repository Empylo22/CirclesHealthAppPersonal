class PostForgotPasswordPostResp {
  bool? status;
  int? statusCode;
  String? message;

  PostForgotPasswordPostResp({this.status, this.statusCode, this.message});

  PostForgotPasswordPostResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (statusCode != null) {
      data['statusCode'] = statusCode;
    }
    if (message != null) {
      data['message'] = message;
    }
    return data;
  }
}
