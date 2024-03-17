import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/chat_group_message_typing_screen/models/chat_group_message_typing_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatGroupMessageTypingScreen.
///
/// This class manages the state of the ChatGroupMessageTypingScreen, including the
/// current chatGroupMessageTypingModelObj
class ChatGroupMessageTypingController extends GetxController {TextEditingController messagesSendFieldController = TextEditingController();

Rx<ChatGroupMessageTypingModel> chatGroupMessageTypingModelObj = ChatGroupMessageTypingModel().obs;

@override void onClose() { super.onClose(); messagesSendFieldController.dispose(); } 
 }
