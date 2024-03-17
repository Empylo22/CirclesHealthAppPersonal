import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/profile_account_tab_container_screen/models/profile_account_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProfileAccountTabContainerScreen.
///
/// This class manages the state of the ProfileAccountTabContainerScreen, including the
/// current profileAccountTabContainerModelObj
class ProfileAccountTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ProfileAccountTabContainerModel> profileAccountTabContainerModelObj = ProfileAccountTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
