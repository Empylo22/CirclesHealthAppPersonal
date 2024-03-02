import '../../../core/app_export.dart';
import '../models/profile_setup_client_user_model.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/updateSignupProfile/post_update_signup_profile_resp.dart';
import 'package:empylo/data/apiClient/api_client.dart';

/// A controller class for the ProfileSetupClientUserScreen.
///
/// This class manages the state of the ProfileSetupClientUserScreen, including the
/// current profileSetupClientUserModelObj
class ProfileSetupClientUserController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  Rx<ProfileSetupClientUserModel> profileSetupClientUserModelObj =
      ProfileSetupClientUserModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  SelectionPopupModel? selectedDropDownValue5;

  SelectionPopupModel? selectedDropDownValue6;

  PostUpdateSignupProfileResp postUpdateSignupProfileResp =
      PostUpdateSignupProfileResp();

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    lastNameController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in profileSetupClientUserModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupClientUserModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in profileSetupClientUserModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupClientUserModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element
        in profileSetupClientUserModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupClientUserModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element
        in profileSetupClientUserModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupClientUserModelObj.value.dropdownItemList3.refresh();
  }

  onSelected4(dynamic value) {
    for (var element
        in profileSetupClientUserModelObj.value.dropdownItemList4.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupClientUserModelObj.value.dropdownItemList4.refresh();
  }

  onSelected5(dynamic value) {
    for (var element
        in profileSetupClientUserModelObj.value.dropdownItemList5.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupClientUserModelObj.value.dropdownItemList5.refresh();
  }

  onSelected6(dynamic value) {
    for (var element
        in profileSetupClientUserModelObj.value.dropdownItemList6.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileSetupClientUserModelObj.value.dropdownItemList6.refresh();
  }

  /// Calls the https://empylo-app.vercel.app/auth/id/update-signup-profile API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callUpdateSignupProfile(Map req) async {
    try {
      postUpdateSignupProfileResp =
          await Get.find<ApiClient>().updateSignupProfile(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleUpdateSignupProfileSuccess();
    } on PostUpdateSignupProfileResp catch (e) {
      postUpdateSignupProfileResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleUpdateSignupProfileSuccess() {}
}
