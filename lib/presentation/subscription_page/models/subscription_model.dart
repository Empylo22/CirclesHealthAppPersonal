import '../../../core/app_export.dart';import 'frame10_item_model.dart';/// This class defines the variables used in the [subscription_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscriptionModel {Rx<List<Frame10ItemModel>> frame10ItemList = Rx([Frame10ItemModel(proText: "PRO".obs),Frame10ItemModel(proText: "ENTERPRISE".obs)]);

 }
