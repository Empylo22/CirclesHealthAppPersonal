import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.stackImage, this.todayText, this.dreamsText, this.id, }) { stackImage = stackImage  ?? Rx(ImageConstant.imgRectangle21);todayText = todayText  ?? Rx("Today");dreamsText = dreamsText  ?? Rx("Every step I take, brings me closer to my dreams");id = id  ?? Rx(""); }

Rx<String>? stackImage;

Rx<String>? todayText;

Rx<String>? dreamsText;

Rx<String>? id;

 }
