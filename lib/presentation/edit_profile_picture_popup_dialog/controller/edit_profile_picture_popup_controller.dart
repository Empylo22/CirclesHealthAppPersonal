import 'dart:io';
import 'package:empylo/core/app_export.dart';
import 'package:image_picker/image_picker.dart';
import 'package:empylo/presentation/edit_profile_picture_popup_dialog/models/edit_profile_picture_popup_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class EditProfilePicturePopupController {
  Rx<EditProfilePicturePopupModel> editProfilePicturePopupModelObj =
      EditProfilePicturePopupModel().obs;
  Function(File?)? onProfilePictureChange;
  Rx<File?> selectedImage = Rx<File?>(null);
  EditProfilePicturePopupController({this.onProfilePictureChange});

  Future<void> saveFilename(String filename) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('filename', filename);
    } catch (error) {
      print('Error saving filename to SharedPreferences: $error');
    }
  }

  void pickFile() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        File file = File(pickedFile.path);
        await uploadProfilePicture(file);
      } else {
        print('No file selected.');
      }
    } catch (error) {
      print('Error picking file: $error');
    }
  }

  Future<void> uploadProfilePicture(File file) async {
    try {
      await saveFilename(file.path);
      if (onProfilePictureChange != null) {
        onProfilePictureChange!(file);
      }
    } catch (error) {
      print('Error uploading profile picture: $error');
    }
  }
}

