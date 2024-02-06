import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/fa_verified_screen/models/fa_verified_model.dart';

/// A controller class for the FaVerifiedScreen.
///
/// This class manages the state of the FaVerifiedScreen, including the
/// current faVerifiedModelObj
class FaVerifiedController extends GetxController {
  Rx<FaVerifiedModel> faVerifiedModelObj = FaVerifiedModel().obs;
}
