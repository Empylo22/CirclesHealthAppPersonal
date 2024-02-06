import '../client_user_overview_one_page/widgets/healthmanagementcomponent_item_widget.dart';
import 'controller/client_user_overview_one_controller.dart';
import 'models/client_user_overview_one_model.dart';
import 'models/healthmanagementcomponent_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ClientUserOverviewOnePage extends StatelessWidget {
  ClientUserOverviewOnePage({Key? key})
      : super(
          key: key,
        );

  ClientUserOverviewOneController controller = Get.put(
      ClientUserOverviewOneController(ClientUserOverviewOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 99.h),
                        child: Row(
                          children: [
                            CustomTextFormField(
                              width: 57.h,
                              controller: controller.ongoingController,
                              hintText: "lbl_ongoing".tr,
                              textInputAction: TextInputAction.done,
                              borderDecoration:
                                  TextFormFieldStyleHelper.underLinePrimary,
                              filled: false,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 32.h,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_completed".tr,
                                style: CustomTextStyles.titleSmallBluegray400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "msg_learning_sessions".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 13.v),
                      _buildFrame(),
                      SizedBox(height: 12.v),
                      _buildFrame1(),
                      SizedBox(height: 16.v),
                      Text(
                        "lbl_campaigns".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 6.v),
                      _buildHealthManagementComponent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray40019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    "msg_workplace_relationships".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgNotification,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 42.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_overall_progress".tr,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 45.h,
            ),
            child: Container(
              height: 4.v,
              width: 298.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.7,
                  backgroundColor: appTheme.blueGray10001,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray40019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    "msg_workplace_relationships2".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgNotification,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 40.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_overall_progress2".tr,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 47.h,
            ),
            child: Container(
              height: 4.v,
              width: 298.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: appTheme.blueGray10001,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHealthManagementComponent() {
    return SizedBox(
      height: 237.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 18.h,
            );
          },
          itemCount: controller.clientUserOverviewOneModelObj.value
              .healthmanagementcomponentItemList.value.length,
          itemBuilder: (context, index) {
            HealthmanagementcomponentItemModel model = controller
                .clientUserOverviewOneModelObj
                .value
                .healthmanagementcomponentItemList
                .value[index];
            return HealthmanagementcomponentItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
