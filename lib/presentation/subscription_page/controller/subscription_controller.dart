import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/subscription_page/models/subscription_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SubscriptionPage.
///
/// This class manages the state of the SubscriptionPage, including the
/// current subscriptionModelObj
class SubscriptionController extends GetxController {
  SubscriptionController(this.subscriptionModelObj);

  TextEditingController editTextController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController mmyyController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  Rx<SubscriptionModel> subscriptionModelObj;

  Rx<bool> savecarddetails = false.obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    cardNumberController.dispose();
    mmyyController.dispose();
    cvvController.dispose();
  }
}
