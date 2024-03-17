import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/create_new_circle_screen/models/create_new_circle_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateNewCircleScreen.
///
/// This class manages the state of the CreateNewCircleScreen, including the
/// current createNewCircleModelObj
class CreateNewCircleController extends GetxController {TextEditingController nameEditTextController = TextEditingController();

TextEditingController descriptionEditTextController = TextEditingController();

TextEditingController shareInviteLinkEditTextController = TextEditingController();

Rx<CreateNewCircleModel> createNewCircleModelObj = CreateNewCircleModel().obs;

@override void onClose() { super.onClose(); nameEditTextController.dispose(); descriptionEditTextController.dispose(); shareInviteLinkEditTextController.dispose(); } 
 }
