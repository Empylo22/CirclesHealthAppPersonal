import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/client_user_overview_page/models/client_user_overview_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ClientUserOverviewPage.
///
/// This class manages the state of the ClientUserOverviewPage, including the
/// current clientUserOverviewModelObj
class ClientUserOverviewController extends GetxController {
  ClientUserOverviewController(this.clientUserOverviewModelObj);

  TextEditingController ongoingController = TextEditingController();

  Rx<ClientUserOverviewModel> clientUserOverviewModelObj;

  @override
  void onClose() {
    super.onClose();
    ongoingController.dispose();
  }
}
