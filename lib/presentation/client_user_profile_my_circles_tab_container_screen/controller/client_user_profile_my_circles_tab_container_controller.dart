import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/client_user_profile_my_circles_tab_container_screen/models/client_user_profile_my_circles_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ClientUserProfileMyCirclesTabContainerScreen.
///
/// This class manages the state of the ClientUserProfileMyCirclesTabContainerScreen, including the
/// current clientUserProfileMyCirclesTabContainerModelObj
class ClientUserProfileMyCirclesTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ClientUserProfileMyCirclesTabContainerModel> clientUserProfileMyCirclesTabContainerModelObj = ClientUserProfileMyCirclesTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
