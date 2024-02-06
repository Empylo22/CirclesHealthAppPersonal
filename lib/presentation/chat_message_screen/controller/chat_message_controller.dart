import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/chat_message_screen/models/chat_message_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatMessageScreen.
///
/// This class manages the state of the ChatMessageScreen, including the
/// current chatMessageModelObj
class ChatMessageController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<ChatMessageModel> chatMessageModelObj = ChatMessageModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
