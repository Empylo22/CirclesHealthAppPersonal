import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/personal_information_screen/models/personal_information_model.dart';import 'package:flutter/material.dart';/// A controller class for the PersonalInformationScreen.
///
/// This class manages the state of the PersonalInformationScreen, including the
/// current personalInformationModelObj
class PersonalInformationController extends GetxController {TextEditingController janevalueController = TextEditingController();

Rx<PersonalInformationModel> personalInformationModelObj = PersonalInformationModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); janevalueController.dispose(); } 
onSelected(dynamic value) { for (var element in personalInformationModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalInformationModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in personalInformationModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalInformationModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in personalInformationModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalInformationModelObj.value.dropdownItemList2.refresh(); } 
 }
