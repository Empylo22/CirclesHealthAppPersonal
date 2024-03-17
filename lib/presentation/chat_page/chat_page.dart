import '../chat_page/widgets/userprofilelist3_item_widget.dart';import 'controller/chat_controller.dart';import 'models/chat_model.dart';import 'models/userprofilelist3_item_model.dart';import 'package:empylo/core/app_export.dart';import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:empylo/widgets/app_bar/custom_app_bar.dart';import 'package:empylo/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ChatPage extends StatelessWidget {ChatPage({Key? key}) : super(key: key);

ChatController controller = Get.put(ChatController(ChatModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_chats".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 13.v), _buildSearchRow(), SizedBox(height: 6.v), _buildUserProfileList()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftBlack900, margin: EdgeInsets.fromLTRB(16.h, 8.v, 337.h, 8.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildSearchRow() { return Padding(padding: EdgeInsets.only(left: 2.h), child: Row(children: [Expanded(child: CustomSearchView(controller: controller.searchController, hintText: "lbl_search".tr)), CustomImageView(imagePath: ImageConstant.imgMegaphone, height: 38.v, width: 42.h, radius: BorderRadius.circular(19.h), margin: EdgeInsets.only(left: 5.h))])); } 
/// Section Widget
Widget _buildUserProfileList() { return Padding(padding: EdgeInsets.only(left: 2.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.chatModelObj.value.userprofilelist3ItemList.value.length, itemBuilder: (context, index) {Userprofilelist3ItemModel model = controller.chatModelObj.value.userprofilelist3ItemList.value[index]; return Userprofilelist3ItemWidget(model, onTapUserProfile: () {onTapUserProfile();});}))); } 
/// Navigates to the chatMessageScreen when the action is triggered.
onTapUserProfile() { Get.toNamed(AppRoutes.chatMessageScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
