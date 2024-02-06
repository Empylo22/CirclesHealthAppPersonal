import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/client_user_profile_my_circles_page/models/client_user_profile_my_circles_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ClientUserProfileMyCirclesPage.
///
/// This class manages the state of the ClientUserProfileMyCirclesPage, including the
/// current clientUserProfileMyCirclesModelObj
class ClientUserProfileMyCirclesController extends GetxController {
  ClientUserProfileMyCirclesController(this.clientUserProfileMyCirclesModelObj);

  TextEditingController mingcuteaddlineController = TextEditingController();

  Rx<ClientUserProfileMyCirclesModel> clientUserProfileMyCirclesModelObj;

  @override
  void onClose() {
    super.onClose();
    mingcuteaddlineController.dispose();
  }
}
