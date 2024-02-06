import '../controller/chat_group_message_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatGroupMessageScreen.
///
/// This class ensures that the ChatGroupMessageController is created when the
/// ChatGroupMessageScreen is first loaded.
class ChatGroupMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatGroupMessageController());
  }
}
