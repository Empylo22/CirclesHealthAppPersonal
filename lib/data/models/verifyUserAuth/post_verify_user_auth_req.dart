class PostVerifyUserAuthReq {

  String? code;

  PostVerifyUserAuthReq({this.code});

  PostVerifyUserAuthReq.fromJson(Map<String, dynamic> json) {

    code = json['code'];

  }

  Map<String, dynamic> toJson() {

    final data = <String, dynamic>{};

    if (code != null) {

      data['code'] = code;

    }

    return data;

  }

}