import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/profile_account_page/models/profile_account_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileAccountPage.
///
/// This class manages the state of the ProfileAccountPage, including the
/// current profileAccountModelObj
class ProfileAccountController extends GetxController {
  ProfileAccountController(this.profileAccountModelObj);

  TextEditingController changeProfilePhotoController = TextEditingController();

  TextEditingController logoutController = TextEditingController();

  Rx<ProfileAccountModel> profileAccountModelObj;

  @override
  void onClose() {
    super.onClose();
    changeProfilePhotoController.dispose();
    logoutController.dispose();
  }
}
