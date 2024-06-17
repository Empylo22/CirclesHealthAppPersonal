class PatchResetPasswordResp {
  String? message;
  int? status;
  dynamic result;
  PatchResetPasswordResp({this.message, this.status, this.result});

  PatchResetPasswordResp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];

    // Check if the 'result' field is present in the JSON response
    if (json.containsKey('result')) {
      final dynamic resultData = json['result'];
      if (resultData is List) {
        // If it's a list, parse each item as a string
        result = List<String>.from(resultData.map((e) => e.toString()));
      } else {
        // If it's a single string or null, assign it directly
        result = resultData?.toString();
      }
    } else {
      // Handle the case where 'result' field is missing in the JSON response
      result = null; // or any default value you prefer
    }
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
      // Check if result is a List or a single object
      if (result is List) {
        // Convert each item in the list to JSON
        data['result'] = result.map((e) => e.toJson()).toList();
      } else {
        // Convert the single object to JSON
        data['result'] = result.toJson();
      }
    }

    return data;
  }
}

class Result {
  String? message;
  String? accessToken;
  User? user;

  Result({this.message, this.accessToken, this.user});
  Result.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    accessToken = json['accessToken'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message;
    }
    if (accessToken != null) {
      data['accessToken'] = accessToken;
    }
    if (user != null) {
      data['user'] = user?.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  dynamic firstName;
  dynamic lastName;
  String? email;
  String? accountType;
  dynamic phoneNumber;
  bool? isActivated;
  bool? twoStepVerification;
  dynamic companyName;
  bool? isDeleted;
  dynamic companyId;
  dynamic profileImage;
  dynamic lastLogin;
  bool? isEmailVerified;
  String? status;
  dynamic gender;
  dynamic maritalStatus;
  dynamic empyloID;
  dynamic industry;
  dynamic website;
  dynamic companyDescription;
  dynamic address;
  dynamic addressCity;
  dynamic addressState;
  bool? emailNotification;
  bool? campaignNotification;
  bool? termsConditions;
  dynamic socialId;
  dynamic socialProvider;
  String? createdAt;
  String? updatedAt;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.accountType,
    this.phoneNumber,
    this.isActivated,
    this.twoStepVerification,
    this.companyName,
    this.isDeleted,
    this.companyId,
    this.profileImage,
    this.lastLogin,
    this.isEmailVerified,
    this.status,
    this.gender,
    this.maritalStatus,
    this.empyloID,
    this.industry,
    this.website,
    this.companyDescription,
    this.address,
    this.addressCity,
    this.addressState,
    this.emailNotification,
    this.campaignNotification,
    this.termsConditions,
    this.socialId,
    this.socialProvider,
    this.createdAt,
    this.updatedAt,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    accountType = json['accountType'];
    phoneNumber = json['phoneNumber'];
    isActivated = json['isActivated'];
    twoStepVerification = json['twoStepVerification'];
    companyName = json['companyName'];
    isDeleted = json['isDeleted'];
    companyId = json['companyId'];
    profileImage = json['profileImage'];
    lastLogin = json['lastLogin'];
    isEmailVerified = json['isEmailVerified'];
    status = json['status'];
    gender = json['gender'];
    maritalStatus = json['maritalStatus'];
    empyloID = json['empyloID'];
    industry = json['industry'];
    website = json['website'];
    companyDescription = json['companyDescription'];
    address = json['address'];
    addressCity = json['addressCity'];
    addressState = json['addressState'];
    emailNotification = json['emailNotification'];
    campaignNotification = json['campaignNotification'];
    termsConditions = json['termsConditions'];
    socialId = json['socialId'];
    socialProvider = json['socialProvider'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (id != null) {
      data['id'] = id;
    }
    if (firstName != null) {
      data['firstName'] = firstName;
    }
    if (lastName != null) {
      data['lastName'] = lastName;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (accountType != null) {
      data['accountType'] = accountType;
    }
    if (phoneNumber != null) {
      data['phoneNumber'] = phoneNumber;
    }
    if (isActivated != null) {
      data['isActivated'] = isActivated;
    }
    if (twoStepVerification != null) {
      data['twoStepVerification'] = twoStepVerification;
    }
    if (companyName != null) {
      data['companyName'] = companyName;
    }
    if (isDeleted != null) {
      data['isDeleted'] = isDeleted;
    }
    if (companyId != null) {
      data['companyId'] = companyId;
    }
    if (profileImage != null) {
      data['profileImage'] = profileImage;
    }
    if (lastLogin != null) {
      data['lastLogin'] = lastLogin;
    }
    if (isEmailVerified != null) {
      data['isEmailVerified'] = isEmailVerified;
    }
    if (gender != null) {
      data['gender'] = gender;
    }
    if (maritalStatus != null) {
      data['maritalStatus'] = maritalStatus;
    }
    if (empyloID != null) {
      data['empyloID'] = empyloID;
    }
    if (industry != null) {
      data['industry'] = industry;
    }
    if (website != null) {
      data['website'] = website;
    }
    if (companyDescription != null) {
      data['companyDescription'] = companyDescription;
    }
    if (address != null) {
      data['address'] = address;
    }
    if (addressCity != null) {
      data['addressCity'] = addressCity;
    }
    if (addressState != null) {
      data['addressState'] = addressState;
    }
    if (emailNotification != null) {
      data['emailNotification'] = emailNotification;
    }
    if (campaignNotification != null) {
      data['campaignNotification'] = campaignNotification;
    }
    if (termsConditions != null) {
      data['termsConditions'] = termsConditions;
    }
    if (socialId != null) {
      data['socialId'] = socialId;
    }
    if (socialProvider != null) {
      data['socialProvider'] = socialProvider;
    }
    if (createdAt != null) {
      data['createdAt'] = createdAt;
    }
    if (updatedAt != null) {
      data['updatedAt'] = updatedAt;
    }
    return data;
  }
}
