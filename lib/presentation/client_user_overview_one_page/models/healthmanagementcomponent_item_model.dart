import '../../../core/app_export.dart';

/// This class is used in the [healthmanagementcomponent_item_widget] screen.
class HealthmanagementcomponentItemModel {
  HealthmanagementcomponentItemModel({
    this.healthManagementImage,
    this.healthManagementText,
    this.calendarText,
    this.clockText,
    this.id,
  }) {
    healthManagementImage =
        healthManagementImage ?? Rx(ImageConstant.imgRectangle76);
    healthManagementText = healthManagementText ?? Rx("Health Management ");
    calendarText = calendarText ?? Rx("20 Jan, 2024");
    clockText = clockText ?? Rx("04:00pm");
    id = id ?? Rx("");
  }

  Rx<String>? healthManagementImage;

  Rx<String>? healthManagementText;

  Rx<String>? calendarText;

  Rx<String>? clockText;

  Rx<String>? id;
}
