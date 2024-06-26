import '../subscription_checkout_screen/widgets/carddetails_item_widget.dart';
import 'controller/subscription_checkout_controller.dart';
import 'models/carddetails_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SubscriptionCheckoutScreen
    extends GetWidget<SubscriptionCheckoutController> {
  const SubscriptionCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_payment".tr,
                          style: CustomTextStyles.titleMediumBlack900Medium)),
                  SizedBox(height: 7.v),
                  Text("lbl_pro".tr,
                      style: CustomTextStyles.titleSmallLibreBaskerville),
                  SizedBox(height: 8.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_99".tr,
                            style: CustomTextStyles
                                .titleLargeLibreBaskervilleff000000),
                        TextSpan(
                            text: "lbl_month".tr,
                            style: CustomTextStyles
                                .labelLargeLibreBaskervilleff000000)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 47.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_sub_total".tr,
                                style: theme.textTheme.bodyLarge),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 11.v, bottom: 10.v),
                                child: SizedBox(
                                    width: 185.h, child: Divider(indent: 8.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("lbl_99_00".tr,
                                    style: theme.textTheme.bodyLarge))
                          ])),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.only(left: 25.h, right: 33.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_discount".tr,
                                style: theme.textTheme.bodyLarge),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 11.v, bottom: 10.v),
                                child: SizedBox(
                                    width: 185.h, child: Divider(indent: 8.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text("lbl_0_00".tr,
                                    style: theme.textTheme.bodyLarge))
                          ])),
                  SizedBox(height: 15.v),
                  _buildFrame(),
                  SizedBox(height: 49.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_payment_information".tr,
                              style:
                                  CustomTextStyles.titleMediumBlack900Medium))),
                  SizedBox(height: 14.v),
                  _buildCardDetails(),
                  SizedBox(height: 48.v),
                  CustomElevatedButton(
                      text: "lbl_pay".tr,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumBlack900Medium,
                      onPressed: () {
                        onTapPay();
                      }),
                  SizedBox(height: 21.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 332.h,
                          margin: EdgeInsets.only(left: 8.h, right: 20.h),
                          child: Text("msg_your_monthly_subscription".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .labelLargeSwitzerVariableBlack900))),
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
  Widget _buildFrame() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
        decoration: AppDecoration.outlineGray500,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text("lbl_total".tr,
                  style: CustomTextStyles.titleMediumBlack900_1)),
          Text("lbl_99_00".tr, style: CustomTextStyles.titleMediumBlack900_1)
        ]));
  }

  /// Section Widget
  Widget _buildCardDetails() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 8.v);
            },
            itemCount: controller.subscriptionCheckoutModelObj.value
                .carddetailsItemList.value.length,
            itemBuilder: (context, index) {
              CarddetailsItemModel model = controller
                  .subscriptionCheckoutModelObj
                  .value
                  .carddetailsItemList
                  .value[index];
              return CarddetailsItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the subscriptionSuccessfulScreen when the action is triggered.
  onTapPay() {
    Get.toNamed(
      AppRoutes.subscriptionSuccessfulScreen,
    );
  }
}
