import '../../../core/app_export.dart';/// This class is used in the [messagecontainer_item_widget] screen.
class MessagecontainerItemModel {MessagecontainerItemModel({this.messageImage, this.messageText, this.receiveCodeText, this.id, }) { messageImage = messageImage  ?? Rx(ImageConstant.imgMdiEmailNewsletter);messageText = messageText  ?? Rx("Text Message");receiveCodeText = receiveCodeText  ?? Rx("Receive code via message");id = id  ?? Rx(""); }

Rx<String>? messageImage;

Rx<String>? messageText;

Rx<String>? receiveCodeText;

Rx<String>? id;

 }
