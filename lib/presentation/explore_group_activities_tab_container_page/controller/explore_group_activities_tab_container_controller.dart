import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/explore_group_activities_tab_container_page/models/explore_group_activities_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ExploreGroupActivitiesTabContainerPage.
///
/// This class manages the state of the ExploreGroupActivitiesTabContainerPage, including the
/// current exploreGroupActivitiesTabContainerModelObj
class ExploreGroupActivitiesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ExploreGroupActivitiesTabContainerController(
      this.exploreGroupActivitiesTabContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ExploreGroupActivitiesTabContainerModel>
      exploreGroupActivitiesTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
