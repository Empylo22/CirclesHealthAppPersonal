import '../controller/tell_a_friend_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TellAFriendScreen.
///
/// This class ensures that the TellAFriendController is created when the
/// TellAFriendScreen is first loaded.
class TellAFriendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TellAFriendController());
  }
}
