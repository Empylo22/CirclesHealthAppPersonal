import 'controller/my_circles_faq_controller.dart';import 'package:empylo/core/app_export.dart';import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:empylo/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class MyCirclesFaqScreen extends GetWidget<MyCirclesFaqController> {const MyCirclesFaqScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_faqs".tr, style: CustomTextStyles.titleMediumInterBlack900), SizedBox(height: 22.v), Container(width: 324.h, margin: EdgeInsets.only(right: 35.h), child: Text("msg_this_faq_provides".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumOnPrimary)), SizedBox(height: 22.v), _buildExpandableList(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftBlack900, margin: EdgeInsets.fromLTRB(16.h, 8.v, 337.h, 8.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildExpandableList() { return SizedBox(); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
