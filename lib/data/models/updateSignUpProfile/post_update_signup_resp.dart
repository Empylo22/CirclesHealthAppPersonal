
class PostUpdateSignupProfileResp {
  final String message;
  final int status;
  final Result? result;

  PostUpdateSignupProfileResp(
      {required this.message, required this.status, this.result});

  factory PostUpdateSignupProfileResp.fromJson(Map<String, dynamic> json) {
    return PostUpdateSignupProfileResp(
      message: json['message'],
      status: json['status'],
      result: json['result'] != null ? Result.fromJson(json['result']) : null,
    );
  }
}

class Result {
  final int id;
  final String? firstName;
  final String? lastName;
  final String email;
  final String accountType;
  final bool isActivated;
  final bool twoStepVerification;
  final String status;
  final bool isEmailVerified;
  final bool emailNotification;
  final bool campaignNtification;
  final bool termsConditions;
  final String createdAt;
  final String updatedAt;

  Result({
    required this.id,
    this.firstName,
    this.lastName,
    required this.email,
    required this.accountType,
    required this.isActivated,
    required this.twoStepVerification,
    required this.status,
    required this.isEmailVerified,
    required this.emailNotification,
    required this.campaignNtification,
    required this.termsConditions,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      accountType: json['accountType'],
      isActivated: json['isActivated'],
      twoStepVerification: json['twoStepVerification'],
      status: json['status'],
      isEmailVerified: json['isEmailVerified'],
      emailNotification: json['emailNotification'],
      campaignNtification: json['campaignNtification'],
      termsConditions: json['termsConditions'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class ErrorResponse {
  final String message;
  final String error;
  final int statusCode;

  ErrorResponse(
      {required this.message, required this.error, required this.statusCode});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      message: json['message'],
      error: json['error'],
      statusCode: json['statusCode'],
    );
  }
}
