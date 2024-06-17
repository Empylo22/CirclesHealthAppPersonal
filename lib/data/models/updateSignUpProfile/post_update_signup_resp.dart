class PostUpdateSignupProfileResp {
  String? message;
  int? status;
  Result? result;

  PostUpdateSignupProfileResp({this.message, this.status, this.result});

  PostUpdateSignupProfileResp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? accountType;
  String? phoneNumber;
  bool? isActivated;
  bool? twoStepVerification;
  String? companyName;
  bool? isDeleted;
  dynamic companyId;
  dynamic roleId;
  String? profileImage;
  String? ageRange;
  dynamic lastLogin;
  bool? isEmailVerified;
  String? status;
  String? gender;
  String? maritalStatus;
  dynamic empyloID;
  dynamic industry;
  dynamic website;
  dynamic companyDescription;
  dynamic address;
  dynamic addressCity;
  dynamic addressState;
  bool? emailNotification;
  bool? campaignNtification;
  bool? termsConditions;
  dynamic socialId;
  dynamic socialProvider;
  String? createdAt;
  String? updatedAt;

  Result({
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
    this.roleId,
    this.profileImage,
    this.ageRange,
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
    this.campaignNtification,
    this.termsConditions,
    this.socialId,
    this.socialProvider,
    this.createdAt,
    this.updatedAt,
  });

  Result.fromJson(Map<String, dynamic> json) {
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
    roleId = json['roleId'];
    profileImage = json['profileImage'];
    ageRange = json['ageRange'];
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
    campaignNtification = json['campaignNtification'];
    termsConditions = json['termsConditions'];
    socialId = json['socialId'];
    socialProvider = json['socialProvider'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['accountType'] = accountType;
    data['phoneNumber'] = phoneNumber;
    data['isActivated'] = isActivated;
    data['twoStepVerification'] = twoStepVerification;
    data['companyName'] = companyName;
    data['isDeleted'] = isDeleted;
    data['companyId'] = companyId;
    data['roleId'] = roleId;
    data['profileImage'] = profileImage;
    data['ageRange'] = ageRange;
    data['lastLogin'] = lastLogin;
    data['isEmailVerified'] = isEmailVerified;
    data['status'] = status;
    data['gender'] = gender;
    data['maritalStatus'] = maritalStatus;
    data['empyloID'] = empyloID;
    data['industry'] = industry;
    data['website'] = website;
    data['companyDescription'] = companyDescription;
    data['address'] = address;
    data['addressCity'] = addressCity;
    data['addressState'] = addressState;
    data['emailNotification'] = emailNotification;
    data['campaignNtification'] = campaignNtification;
    data['termsConditions'] = termsConditions;
    data['socialId'] = socialId;
    data['socialProvider'] = socialProvider;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
