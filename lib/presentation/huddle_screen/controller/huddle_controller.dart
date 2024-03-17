import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/huddle_screen/models/huddle_model.dart';/// A controller class for the HuddleScreen.
///
/// This class manages the state of the HuddleScreen, including the
/// current huddleModelObj
class HuddleController extends GetxController {Rx<HuddleModel> huddleModelObj = HuddleModel().obs;

 }
