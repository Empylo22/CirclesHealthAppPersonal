import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/notifications_settings_screen/models/notifications_settings_model.dart';/// A controller class for the NotificationsSettingsScreen.
///
/// This class manages the state of the NotificationsSettingsScreen, including the
/// current notificationsSettingsModelObj
class NotificationsSettingsController extends GetxController {Rx<NotificationsSettingsModel> notificationsSettingsModelObj = NotificationsSettingsModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

Rx<bool> isSelectedSwitch3 = false.obs;

Rx<bool> isSelectedSwitch4 = false.obs;

 }
