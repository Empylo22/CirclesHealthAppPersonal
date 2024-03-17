import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.titleText, this.descriptionText, this.id, }) { titleText = titleText  ?? Rx("Lorem ipsum dolor sit amet consectetur.");descriptionText = descriptionText  ?? Rx("Feugiat imperdiet magna purus convallis ullam ");id = id  ?? Rx(""); }

Rx<String>? titleText;

Rx<String>? descriptionText;

Rx<String>? id;

 }
