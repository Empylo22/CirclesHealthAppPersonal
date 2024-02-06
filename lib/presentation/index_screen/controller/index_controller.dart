import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/index_screen/models/index_model.dart';

/// A controller class for the IndexScreen.
///
/// This class manages the state of the IndexScreen, including the
/// current indexModelObj
class IndexController extends GetxController {
  Rx<IndexModel> indexModelObj = IndexModel().obs;
}
