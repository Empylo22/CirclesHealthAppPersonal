class PostUpdateSignupProfileReq {
  String? firstName;
  String? lastName;
  String? ageRange;
  String? ethnicity;
  String? maritalStatus;
  String? department;
  String? jobRole;
  String? accountType;
  String? gender;
  String? dob;
  String? address;
  String? disability;

  PostUpdateSignupProfileReq(
      {this.firstName,
      this.lastName,
      this.ageRange,
      this.ethnicity,
      this.maritalStatus,
      this.department,
      this.jobRole,
      this.accountType,
      this.gender,
      this.dob,
      this.address,
      this.disability});

  PostUpdateSignupProfileReq.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    ageRange = json['ageRange'];
    ethnicity = json['ethnicity'];
    maritalStatus = json['maritalStatus'];
    department = json['department'];
    jobRole = json['jobRole'];
    accountType = json['accountType'];
    gender = json['gender'];
    dob = json['DOB'];
    address = json['address'];
    disability = json['disability'];
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
    if (dob != null) {
      data['DOB'] = dob;
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
