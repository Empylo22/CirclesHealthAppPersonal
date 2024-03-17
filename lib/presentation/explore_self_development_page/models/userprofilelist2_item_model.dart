import '../../../core/app_export.dart';/// This class is used in the [userprofilelist2_item_widget] screen.
class Userprofilelist2ItemModel {Userprofilelist2ItemModel({this.todayImage, this.todayText, this.dreamsText, this.id, }) { todayImage = todayImage  ?? Rx(ImageConstant.imgRectangle21);todayText = todayText  ?? Rx("Today");dreamsText = dreamsText  ?? Rx("Every step I take, brings me closer to my dreams");id = id  ?? Rx(""); }

Rx<String>? todayImage;

Rx<String>? todayText;

Rx<String>? dreamsText;

Rx<String>? id;

 }
