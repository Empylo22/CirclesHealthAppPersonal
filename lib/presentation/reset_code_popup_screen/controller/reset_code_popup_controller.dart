import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/reset_code_popup_screen/models/reset_code_popup_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the ResetCodePopupScreen.
///
/// This class manages the state of the ResetCodePopupScreen, including the
/// current resetCodePopupModelObj
class ResetCodePopupController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ResetCodePopupModel> resetCodePopupModelObj = ResetCodePopupModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
