import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/home_personal_user_page/models/home_personal_user_model.dart';

/// A controller class for the HomePersonalUserPage.
///
/// This class manages the state of the HomePersonalUserPage, including the
/// current homePersonalUserModelObj
class HomePersonalUserController extends GetxController {
  HomePersonalUserController(this.homePersonalUserModelObj);

  Rx<HomePersonalUserModel> homePersonalUserModelObj;
}
