import 'package:collection/collection.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/data/models/updateSignUpProfile/post_update_signup_req.dart';
import 'package:empylo/presentation/profile_setup_screen/models/profile_setup_model.dart';
import 'package:flutter/material.dart';
import '../../../data/apiClient/api_client.dart';

/// A controller class for the ProfileSetupScreen.
///
/// This class manages the state of the ProfileSetupScreen, including the
/// current profileSetupModelObj
class ProfileSetupController extends GetxController {
  TextEditingController pepiconspencilpenController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController dateofbirthController = TextEditingController();
  Rx<ProfileSetupModel> profileSetupModelObj = ProfileSetupModel().obs;
  Rx<ProfileSetupModel> locationSetupModelObj = ProfileSetupModel().obs;
  SelectionPopupModel? selectedDropDownValue;
  
  
  @override
  void onClose() {
    super.onClose();
    pepiconspencilpenController.dispose();
    dateofbirthController.dispose();
    lastnameController.dispose();
  }

  String get selectedGender {
    // Return the last selected gender from the dropdown
    var selectedGender = profileSetupModelObj.value.genderDropdownItemList.value
        .lastWhereOrNull((element) => element.isSelected);

    return selectedGender?.value ??
        "Gender"; // Replace with a default value if none selected
  }

  String get selectedLocation {
    // Return the last selected location from the dropdown
    var selectedLocation = locationSetupModelObj
        .value.locationDropdownItemList.value
        .lastWhereOrNull((element) => element.isSelected);

    return selectedLocation?.value ??
        "Location"; // Replace with a default value if none selected
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

  Future<void> callUpdateSignupProfile() async {
    try {
      // Create the request body with the necessary data
      final req = {
        'firstName': pepiconspencilpenController.text,
        'lastName': lastnameController.text,
        'DOB': dateofbirthController.text,
        'gender': selectedGender,
        'address': selectedLocation,
        'accountType': await PostUpdateSignUpProfileRequest.getAccountType(),
      };

      // Call the API to update the signup profile
      await Get.find<ApiClient>().updateSignupProfile(
        headers: {'Content-type': 'application/json'},
        requestData: req,
      );

      // Handle the success response
      _handleUpdateSignupProfileSuccess();
    } catch (e) {
      // Re-throw the exception to handle it at a higher level if needed
      print(e);
      rethrow;
    }
  }

// Handles the success response for updating the signup profile
  void _handleUpdateSignupProfileSuccess() {
    
  }
}
