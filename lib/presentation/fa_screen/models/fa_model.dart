import '../../../core/app_export.dart';import 'messagecontainer_item_model.dart';/// This class defines the variables used in the [fa_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FaModel {Rx<List<MessagecontainerItemModel>> messagecontainerItemList = Rx([MessagecontainerItemModel(messageImage:ImageConstant.imgMdiEmailNewsletter.obs,messageText: "Text Message".obs,receiveCodeText: "Receive code via message".obs),MessagecontainerItemModel(messageImage:ImageConstant.imgMingcutePhoneCallFill.obs,messageText: "Phone Call".obs,receiveCodeText: "Receive code via call".obs)]);

 }
