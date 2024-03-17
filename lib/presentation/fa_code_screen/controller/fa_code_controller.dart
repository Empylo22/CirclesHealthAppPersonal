import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/fa_code_screen/models/fa_code_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the FaCodeScreen.
///
/// This class manages the state of the FaCodeScreen, including the
/// current faCodeModelObj
class FaCodeController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<FaCodeModel> faCodeModelObj = FaCodeModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
