import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/client_user_overview_tab_container_screen/models/client_user_overview_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ClientUserOverviewTabContainerScreen.
///
/// This class manages the state of the ClientUserOverviewTabContainerScreen, including the
/// current clientUserOverviewTabContainerModelObj
class ClientUserOverviewTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ClientUserOverviewTabContainerModel> clientUserOverviewTabContainerModelObj = ClientUserOverviewTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
