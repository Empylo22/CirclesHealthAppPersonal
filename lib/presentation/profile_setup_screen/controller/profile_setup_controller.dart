import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/profile_setup_screen/models/profile_setup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileSetupScreen.
///
/// This class manages the state of the ProfileSetupScreen, including the
/// current profileSetupModelObj
class ProfileSetupController extends GetxController {
  TextEditingController pepiconspencilpenController = TextEditingController();
  TextEditingController dateofbirthController = TextEditingController();
  Rx<ProfileSetupModel> profileSetupModelObj = ProfileSetupModel().obs;
  Rx<ProfileSetupModel> locationSetupModelObj = ProfileSetupModel().obs;
  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    pepiconspencilpenController.dispose();
    dateofbirthController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in profileSetupModelObj.value.genderDropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupModelObj.value.genderDropdownItemList.refresh();
    locationSetupModelObj.value.locationDropdownItemList.refresh();
  }
}
