import 'package:shared_preferences/shared_preferences.dart';

class PostUpdateSignUpProfileRequest {
  String? firstName;
  String? lastName;
  String? ageRange;
  String? ethnicity;
  String? maritalStatus;
  String? department;
  String? jobRole;
  String? accountType;
  String? gender;
  String? address;
  String? disability;
  String? DOB;

  PostUpdateSignUpProfileRequest(
      {this.firstName,
      this.lastName,
      this.ageRange,
      this.ethnicity,
      this.maritalStatus,
      this.department,
      this.jobRole,
      required this.accountType,
      this.gender,
      this.address,
      this.DOB,
      this.disability});
  PostUpdateSignUpProfileRequest.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    ageRange = json['ageRange'];
    ethnicity = json['ethnicity'];
    maritalStatus = json['maritalStatus'];
    department = json['department'];
    jobRole = json['jobRole'];
    accountType = json['accountType'];
    gender = json['gender'];
    address = json['address'];
    disability = json['disability'];
    DOB = json['DOB'];
  }
  // Function to get the account type from SharedPreferences
  static Future<String> getAccountType() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('accountType') ?? "default_account_type";
  }

  // Function to update the account type in SharedPreferences
  static Future<void> updateAccountType(String newAccountType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('accountType', newAccountType);
  }

  // Function to create an instance with the account type retrieved from SharedPreferences
  static Future<PostUpdateSignUpProfileRequest> getInstance() async {
    String accountType = await getAccountType();
    return PostUpdateSignUpProfileRequest(accountType: accountType);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (firstName != null) {
      data['firstName'] = firstName;
    }
    if (lastName != null) {
      data['lastName'] = lastName;
    }
    if (ageRange != null) {
      data['ageRange'] = ageRange;
    }
    if (ethnicity != null) {
      data['ethnicity'] = ethnicity;
    }
    if (maritalStatus != null) {
      data['maritalStatus'] = maritalStatus;
    }
    if (department != null) {
      data['department'] = department;
    }
    if (jobRole != null) {
      data['jobRole'] = jobRole;
    }
    if (accountType != null) {
      data['accountType'] = accountType;
    }
    if (gender != null) {
      data['gender'] = gender;
    }
    if (address != null) {
      data['address'] = address;
    }
    if (disability != null) {
      data['disability'] = disability;
    }
    return data;
  }
}
