import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/chat_page/models/chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatPage.
///
/// This class manages the state of the ChatPage, including the
/// current chatModelObj
class ChatController extends GetxController {
  ChatController(this.chatModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ChatModel> chatModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
