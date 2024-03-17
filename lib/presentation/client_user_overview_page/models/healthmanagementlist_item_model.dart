import '../../../core/app_export.dart';/// This class is used in the [healthmanagementlist_item_widget] screen.
class HealthmanagementlistItemModel {HealthmanagementlistItemModel({this.healthManagementImage, this.healthManagementText, this.completedText, this.id, }) { healthManagementImage = healthManagementImage  ?? Rx(ImageConstant.imgRectangle76);healthManagementText = healthManagementText  ?? Rx("Health Management ");completedText = completedText  ?? Rx("Completed on 21 Jan, 2024");id = id  ?? Rx(""); }

Rx<String>? healthManagementImage;

Rx<String>? healthManagementText;

Rx<String>? completedText;

Rx<String>? id;

 }
