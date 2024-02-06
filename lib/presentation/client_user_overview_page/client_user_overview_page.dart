import '../client_user_overview_page/widgets/healthmanagementlist_item_widget.dart';
import '../client_user_overview_page/widgets/viewhierarchylist_item_widget.dart';
import 'controller/client_user_overview_controller.dart';
import 'models/client_user_overview_model.dart';
import 'models/healthmanagementlist_item_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ClientUserOverviewPage extends StatelessWidget {
  ClientUserOverviewPage({Key? key})
      : super(
          key: key,
        );

  ClientUserOverviewController controller =
      Get.put(ClientUserOverviewController(ClientUserOverviewModel().obs));

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
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "msg_learning_sessions2".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildViewHierarchyList(),
                      SizedBox(height: 19.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_campaigns".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildHealthManagementList(),
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
  Widget _buildViewHierarchyList() {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: controller.clientUserOverviewModelObj.value
              .viewhierarchylistItemList.value.length,
          itemBuilder: (context, index) {
            ViewhierarchylistItemModel model = controller
                .clientUserOverviewModelObj
                .value
                .viewhierarchylistItemList
                .value[index];
            return ViewhierarchylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHealthManagementList() {
    return SizedBox(
      height: 237.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 2.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 18.h,
            );
          },
          itemCount: controller.clientUserOverviewModelObj.value
              .healthmanagementlistItemList.value.length,
          itemBuilder: (context, index) {
            HealthmanagementlistItemModel model = controller
                .clientUserOverviewModelObj
                .value
                .healthmanagementlistItemList
                .value[index];
            return HealthmanagementlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
