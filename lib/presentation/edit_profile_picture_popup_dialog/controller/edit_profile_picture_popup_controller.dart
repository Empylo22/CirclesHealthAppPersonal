import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/edit_profile_picture_popup_dialog/models/edit_profile_picture_popup_model.dart';

/// A controller class for the EditProfilePicturePopupDialog.
///
/// This class manages the state of the EditProfilePicturePopupDialog, including the
/// current editProfilePicturePopupModelObj
class EditProfilePicturePopupController extends GetxController {
  Rx<EditProfilePicturePopupModel> editProfilePicturePopupModelObj =
      EditProfilePicturePopupModel().obs;
}
