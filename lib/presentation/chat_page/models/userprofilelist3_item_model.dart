import '../../../core/app_export.dart';/// This class is used in the [userprofilelist3_item_widget] screen.
class Userprofilelist3ItemModel {Userprofilelist3ItemModel({this.userImage, this.circle1Text, this.adeLoremIpsumText, this.amText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgUserBlueGray10001);circle1Text = circle1Text  ?? Rx("Circle 1");adeLoremIpsumText = adeLoremIpsumText  ?? Rx("Ade: Lorem ipsum dolor sit amet consecte...");amText = amText  ?? Rx("9:41am");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? circle1Text;

Rx<String>? adeLoremIpsumText;

Rx<String>? amText;

Rx<String>? id;

 }
