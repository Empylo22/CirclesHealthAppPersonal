import '../../../core/app_export.dart';import 'userprofilelist3_item_model.dart';/// This class defines the variables used in the [chat_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatModel {Rx<List<Userprofilelist3ItemModel>> userprofilelist3ItemList = Rx([Userprofilelist3ItemModel(userImage:ImageConstant.imgUserBlueGray10001.obs,circle1Text: "Circle 1".obs,adeLoremIpsumText: "Ade: Lorem ipsum dolor sit amet consecte...".obs,amText: "9:41am".obs),Userprofilelist3ItemModel(circle1Text: "Mary".obs,amText: "8:45 am".obs),Userprofilelist3ItemModel(circle1Text: "Ameer".obs,adeLoremIpsumText: "You think you might have time for a chat later".obs)]);

 }
