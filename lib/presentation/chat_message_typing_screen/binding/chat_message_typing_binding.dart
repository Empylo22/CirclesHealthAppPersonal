import '../controller/chat_message_typing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatMessageTypingScreen.
///
/// This class ensures that the ChatMessageTypingController is created when the
/// ChatMessageTypingScreen is first loaded.
class ChatMessageTypingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatMessageTypingController());
  }
}
