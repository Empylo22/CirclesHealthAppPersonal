import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/on_1_call_screen/models/on_1_call_model.dart';

/// A controller class for the On1CallScreen.
///
/// This class manages the state of the On1CallScreen, including the
/// current on1CallModelObj
class On1CallController extends GetxController {
  Rx<On1CallModel> on1CallModelObj = On1CallModel().obs;
}
