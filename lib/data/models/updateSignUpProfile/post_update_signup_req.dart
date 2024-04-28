import 'dart:convert';

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
  List<int>? profileImage;

  PostUpdateSignUpProfileRequest({
    this.firstName,
    this.lastName,
    this.ageRange,
    this.ethnicity,
    this.maritalStatus,
    this.department,
    this.jobRole,
    required this.accountType,
    this.gender,
    this.address,
    this.disability,
    this.DOB,
    this.profileImage,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['ageRange'] = ageRange;
    data['ethnicity'] = ethnicity;
    data['maritalStatus'] = maritalStatus;
    data['department'] = department;
    data['jobRole'] = jobRole;
    data['accountType'] = accountType;
    data['gender'] = gender;
    data['address'] = address;
    data['disability'] = disability;
    data['DOB'] = DOB;
    // Convert profileImage to base64 string
    if (profileImage != null) {
      data['profileImage'] = base64Encode(profileImage!);
    }
    return data;
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
}
