import '../controller/fa_controller.dart';
import '../models/messagecontainer_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessagecontainerItemWidget extends StatelessWidget {
  MessagecontainerItemWidget(
    this.messagecontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessagecontainerItemModel messagecontainerItemModelObj;

  var controller = Get.find<FaController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: messagecontainerItemModelObj.messageImage!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messagecontainerItemModelObj.messageText!.value,
                    style: CustomTextStyles.titleMediumInterBlack900,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    messagecontainerItemModelObj.receiveCodeText!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
