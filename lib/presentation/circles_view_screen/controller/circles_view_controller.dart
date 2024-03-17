import 'package:empylo/core/app_export.dart';import 'package:empylo/presentation/circles_view_screen/models/circles_view_model.dart';/// A controller class for the CirclesViewScreen.
///
/// This class manages the state of the CirclesViewScreen, including the
/// current circlesViewModelObj
class CirclesViewController extends GetxController {Rx<CirclesViewModel> circlesViewModelObj = CirclesViewModel().obs;

 }
