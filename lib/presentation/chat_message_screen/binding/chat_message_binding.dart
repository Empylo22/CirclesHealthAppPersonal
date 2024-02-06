import '../controller/chat_message_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatMessageScreen.
///
/// This class ensures that the ChatMessageController is created when the
/// ChatMessageScreen is first loaded.
class ChatMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatMessageController());
  }
}
