import '../controller/chat_group_message_typing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatGroupMessageTypingScreen.
///
/// This class ensures that the ChatGroupMessageTypingController is created when the
/// ChatGroupMessageTypingScreen is first loaded.
class ChatGroupMessageTypingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatGroupMessageTypingController());
  }
}
