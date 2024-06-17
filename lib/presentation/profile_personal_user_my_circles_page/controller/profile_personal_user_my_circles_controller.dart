import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/profile_personal_user_my_circles_page/models/profile_personal_user_my_circles_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfilePersonalUserMyCirclesPage.
///
/// This class manages the state of the ProfilePersonalUserMyCirclesPage, including the
/// current profilePersonalUserMyCirclesModelObj
class ProfilePersonalUserMyCirclesController extends GetxController {
  ProfilePersonalUserMyCirclesController(
      this.profilePersonalUserMyCirclesModelObj);

  TextEditingController mingcuteaddlineController = TextEditingController();

  Rx<ProfilePersonalUserMyCirclesModel> profilePersonalUserMyCirclesModelObj;

  @override
  void onClose() {
    super.onClose();
    mingcuteaddlineController.dispose();
  }
}
