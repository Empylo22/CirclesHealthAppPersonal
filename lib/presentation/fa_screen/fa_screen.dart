import '../fa_screen/widgets/messagecontainer_item_widget.dart';
import 'controller/fa_controller.dart';
import 'models/messagecontainer_item_model.dart';
import 'package:country_pickers/country.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';

class FaScreen extends GetWidget<FaController> {
  const FaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 5.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_2_step_verification".tr,
                              style:
                                  CustomTextStyles.titleMediumInterBlack900))),
                  SizedBox(height: 48.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_let_s_set_up_your".tr,
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_phone_number".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 2.v),
                  Obx(() => CustomPhoneNumber(
                      country: controller.selectedCountry.value,
                      controller: controller.phoneNumberController,
                      onTap: (Country value) {
                        controller.selectedCountry.value = value;
                      })),
                  SizedBox(height: 57.v),
                  Text("msg_select_any_one_option".tr,
                      style: CustomTextStyles.titleMediumInterBlack900),
                  SizedBox(height: 16.v),
                  _buildMessageContainer(),
                  SizedBox(height: 44.v),
                  _buildFrame(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 337.h, 8.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildMessageContainer() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 26.v);
            },
            itemCount: controller
                .faModelObj.value.messagecontainerItemList.value.length,
            itemBuilder: (context, index) {
              MessagecontainerItemModel model = controller
                  .faModelObj.value.messagecontainerItemList.value[index];
              return MessagecontainerItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFrame() {
    return GestureDetector(
        onTap: () {
          onTapFrame();
        },
        child: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 13.v, bottom: 10.v),
                      child: Text("lbl_step_1".tr,
                          style: CustomTextStyles.titleMediumInterPrimary)),
                  CustomElevatedButton(
                      height: 44.v,
                      width: 94.h,
                      text: "lbl_next".tr,
                      buttonStyle: CustomButtonStyles.outlineBlueGrayTL20,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallSwitzerVariableWhiteA700)
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the faCodeScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.faCodeScreen,
    );
  }
}
