import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/profile_personal_user_my_circles_tab_container_screen/models/profile_personal_user_my_circles_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfilePersonalUserMyCirclesTabContainerScreen.
///
/// This class manages the state of the ProfilePersonalUserMyCirclesTabContainerScreen, including the
/// current profilePersonalUserMyCirclesTabContainerModelObj
class ProfilePersonalUserMyCirclesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ProfilePersonalUserMyCirclesTabContainerModel>
      profilePersonalUserMyCirclesTabContainerModelObj =
      ProfilePersonalUserMyCirclesTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
