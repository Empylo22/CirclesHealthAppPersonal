import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/client_user_overview_one_page/models/client_user_overview_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ClientUserOverviewOnePage.
///
/// This class manages the state of the ClientUserOverviewOnePage, including the
/// current clientUserOverviewOneModelObj
class ClientUserOverviewOneController extends GetxController {ClientUserOverviewOneController(this.clientUserOverviewOneModelObj);

TextEditingController ongoingController = TextEditingController();

Rx<ClientUserOverviewOneModel> clientUserOverviewOneModelObj;

@override void onClose() { super.onClose(); ongoingController.dispose(); } 
 }
