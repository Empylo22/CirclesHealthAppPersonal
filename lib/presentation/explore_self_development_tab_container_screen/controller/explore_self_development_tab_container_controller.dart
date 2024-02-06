import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/explore_self_development_tab_container_screen/models/explore_self_development_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ExploreSelfDevelopmentTabContainerScreen.
///
/// This class manages the state of the ExploreSelfDevelopmentTabContainerScreen, including the
/// current exploreSelfDevelopmentTabContainerModelObj
class ExploreSelfDevelopmentTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<ExploreSelfDevelopmentTabContainerModel>
      exploreSelfDevelopmentTabContainerModelObj =
      ExploreSelfDevelopmentTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
