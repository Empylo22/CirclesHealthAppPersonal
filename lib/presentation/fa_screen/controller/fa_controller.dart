import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/fa_screen/models/fa_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the FaScreen.
///
/// This class manages the state of the FaScreen, including the
/// current faModelObj
class FaController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<FaModel> faModelObj = FaModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('234').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
