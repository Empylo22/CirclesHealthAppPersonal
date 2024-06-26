import 'dart:io';
import 'package:collection/collection.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/data/models/forgotPasswordPost/post_forgot_password_post_resp.dart';
import 'package:empylo/data/models/updateSignUpProfile/post_update_signup_req.dart';
import 'package:empylo/presentation/profile_setup_screen/models/profile_setup_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  File? selectedProfilePicture;
  PostForgotPasswordPostResp postForgotPasswordPostResp =
      PostForgotPasswordPostResp();

  void onProfilePictureChange(File? file) {
    selectedProfilePicture = file;

    String imagePath = file != null ? file.path : ImageConstant.imgEllipse45;

    update();
  }

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

// Function to pick and save file in shared preferences
  Future<void> pickAndSaveFile() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('filename', pickedFile.path);
      print('File picked and saved: ${pickedFile.path}');
    } else {
      print('No file picked.');
    }
  }

// Function to get the filename from shared preferences
  Future<String?> getFileName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('filename');
  }

  Future<void> callUpdateSignupProfile(File? file) async {
  try {
    String? accessToken = await getSavedToken();
    
    if (accessToken != null) {
      // Create the request data with the necessary fields
      final requestData = {
        'firstName': pepiconspencilpenController.text,
        'lastName': lastnameController.text,
        'DOB': dateofbirthController.text,
        'gender': selectedGender,
        'address': selectedLocation,
        'accountType': await PostUpdateSignUpProfileRequest.getAccountType(),
        
      };

      // Call the API to update the signup profile
      await Get.find<ApiClient>().updateSignupProfile(
        accessToken: accessToken,
        requestData: requestData,
        file: file,
      );

      // Handle the success response
      _handleUpdateSignupProfileSuccess();
    } else {
      throw 'Access token is null';
    }
  } catch (e) {
    // Re-throw the exception to handle it at a higher level if needed
    print('Error: ${e.runtimeType} - ${e.toString()}');
    print('Stack trace: ${StackTrace.current}');
    rethrow;
  }
}

void _handleUpdateSignupProfileSuccess() {
  Get.rawSnackbar(
    message: 'Profile Updated Successfully',
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.green,
  );
  Get.toNamed(AppRoutes.homePersonalUserContainerScreen);
}
}