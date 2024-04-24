class PostSignupUserResp {
  String? message;
  int? status;
  String? result;
  

  PostSignupUserResp({this.message, this.status, this.result});

  PostSignupUserResp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
   if (message != null) {
      data['message'] = message;
    } 
    if (status != null) {
      data['status'] = status;
    }
    if (result != null) {
      data['result'] = result;
    }
    
    return data;
  }
}
