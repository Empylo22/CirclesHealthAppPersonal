import '../controller/notifications_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationsSettingsScreen.
///
/// This class ensures that the NotificationsSettingsController is created when the
/// NotificationsSettingsScreen is first loaded.
class NotificationsSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsSettingsController());
  }
}
