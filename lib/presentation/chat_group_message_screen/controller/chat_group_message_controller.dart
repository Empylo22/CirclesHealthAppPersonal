import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/chat_group_message_screen/models/chat_group_message_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatGroupMessageScreen.
///
/// This class manages the state of the ChatGroupMessageScreen, including the
/// current chatGroupMessageModelObj
class ChatGroupMessageController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<ChatGroupMessageModel> chatGroupMessageModelObj = ChatGroupMessageModel().obs;

@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
