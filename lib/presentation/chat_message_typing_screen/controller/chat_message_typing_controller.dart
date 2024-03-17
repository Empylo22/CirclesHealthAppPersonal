import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/chat_message_typing_screen/models/chat_message_typing_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatMessageTypingScreen.
///
/// This class manages the state of the ChatMessageTypingScreen, including the
/// current chatMessageTypingModelObj
class ChatMessageTypingController extends GetxController {TextEditingController messagesSendFieldController = TextEditingController();

Rx<ChatMessageTypingModel> chatMessageTypingModelObj = ChatMessageTypingModel().obs;

@override void onClose() { super.onClose(); messagesSendFieldController.dispose(); } 
 }
