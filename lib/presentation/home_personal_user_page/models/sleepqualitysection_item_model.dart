import '../../../core/app_export.dart';/// This class is used in the [sleepqualitysection_item_widget] screen.
class SleepqualitysectionItemModel {SleepqualitysectionItemModel({this.icon, this.title, this.subtitle, this.id, }) { icon = icon  ?? Rx(ImageConstant.imgIconParkOutlineSleep);title = title  ?? Rx("Sleep quality");subtitle = subtitle  ?? Rx("Low");id = id  ?? Rx(""); }

Rx<String>? icon;

Rx<String>? title;

Rx<String>? subtitle;

Rx<String>? id;

 }
