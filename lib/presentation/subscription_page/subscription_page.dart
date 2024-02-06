import '../subscription_page/widgets/frame10_item_widget.dart';
import 'controller/subscription_controller.dart';
import 'models/frame10_item_model.dart';
import 'models/subscription_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_checkbox_button.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SubscriptionPage extends StatelessWidget {
  SubscriptionPage({Key? key}) : super(key: key);

  SubscriptionController controller =
      Get.put(SubscriptionController(SubscriptionModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("lbl_subscription".tr,
                                      style: CustomTextStyles
                                          .titleMediumBlack900Medium)),
                              SizedBox(height: 18.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("msg_your_current_plan".tr,
                                      style: CustomTextStyles
                                          .titleSmallSwitzerVariable_1)),
                              SizedBox(height: 1.v),
                              _buildFrame(),
                              SizedBox(height: 17.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_choose_plan".tr,
                                      style: CustomTextStyles
                                          .titleMediumBlack900Medium)),
                              SizedBox(height: 15.v),
                              _buildFrame1(),
                              SizedBox(height: 42.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_payment_method".tr,
                                      style: CustomTextStyles
                                          .titleMediumBlack900Medium)),
                              SizedBox(height: 13.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("lbl_card_holder".tr,
                                      style: CustomTextStyles
                                          .titleSmallSwitzerVariable_1)),
                              SizedBox(height: 1.v),
                              _buildEditText(),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("lbl_card_number".tr,
                                      style: CustomTextStyles
                                          .titleSmallSwitzerVariable_1)),
                              SizedBox(height: 1.v),
                              _buildCardNumber(),
                              SizedBox(height: 7.v),
                              _buildFrame4(),
                              SizedBox(height: 16.v),
                              _buildSavecarddetails(),
                              SizedBox(height: 24.v),
                              _buildAddCard()
                            ]))))));
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
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
              child: Text("lbl_basic".tr,
                  style: CustomTextStyles.titleSmallLibreBaskerville)),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_0".tr,
                    style:
                        CustomTextStyles.titleMediumLibreBaskervilleff000000),
                TextSpan(
                    text: "lbl_month".tr,
                    style: CustomTextStyles.labelLargeLibreBaskervilleff000000)
              ]),
              textAlign: TextAlign.left)
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return SizedBox(
        height: 170.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 9.h);
            },
            itemCount: controller
                .subscriptionModelObj.value.frame10ItemList.value.length,
            itemBuilder: (context, index) {
              Frame10ItemModel model = controller
                  .subscriptionModelObj.value.frame10ItemList.value[index];
              return Frame10ItemWidget(model, onTapSelectPlanButton: () {
                onTapSelectPlanButton();
              });
            })));
  }

  /// Section Widget
  Widget _buildEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.editTextController,
            borderDecoration: TextFormFieldStyleHelper.outlineTealTL10,
            filled: false));
  }

  /// Section Widget
  Widget _buildCardNumber() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.cardNumberController,
            borderDecoration: TextFormFieldStyleHelper.outlineTealTL10,
            filled: false));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_valid_until".tr,
                  style: CustomTextStyles.titleSmallSwitzerVariable_1),
              SizedBox(height: 1.v),
              CustomTextFormField(
                  width: 165.h,
                  controller: controller.mmyyController,
                  hintText: "lbl_mm_yy".tr,
                  hintStyle: CustomTextStyles
                      .titleSmallSwitzerVariableSecondaryContainer,
                  contentPadding: EdgeInsets.all(14.h),
                  borderDecoration: TextFormFieldStyleHelper.outlineTealTL10,
                  filled: false)
            ])));
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_cvv".tr,
                  style: CustomTextStyles.titleSmallSwitzerVariable_1),
              SizedBox(height: 1.v),
              CustomTextFormField(
                  width: 165.h,
                  controller: controller.cvvController,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.outlineTealTL10,
                  filled: false)
            ])));
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildFrame2(), _buildFrame3()]));
  }

  /// Section Widget
  Widget _buildSavecarddetails() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Obx(() => CustomCheckboxButton(
            text: "msg_save_card_details".tr,
            value: controller.savecarddetails.value,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            textStyle: CustomTextStyles.bodyMediumRegular,
            onChange: (value) {
              controller.savecarddetails.value = value;
            })));
  }

  /// Section Widget
  Widget _buildAddCard() {
    return CustomElevatedButton(
        height: 48.v,
        text: "lbl_add_card".tr,
        margin: EdgeInsets.only(left: 42.h, right: 41.h),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL10,
        buttonTextStyle: CustomTextStyles.titleSmallSwitzerVariable_1,
        alignment: Alignment.center);
  }

  /// Navigates to the choosePlanPopupScreen when the action is triggered.
  onTapSelectPlanButton() {
    Get.toNamed(AppRoutes.choosePlanPopupScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
