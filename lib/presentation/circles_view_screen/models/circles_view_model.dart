import '../../../core/app_export.dart';import 'userprofilelist4_item_model.dart';/// This class defines the variables used in the [circles_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CirclesViewModel {Rx<List<Userprofilelist4ItemModel>> userprofilelist4ItemList = Rx([Userprofilelist4ItemModel(adminImage:ImageConstant.imgEllipse43.obs,userName: "Ade".obs,score: "Score: 30".obs,adminName: "ADMIN".obs)]);

 }
