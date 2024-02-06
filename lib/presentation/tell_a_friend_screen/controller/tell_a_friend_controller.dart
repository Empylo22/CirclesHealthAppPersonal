import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/tell_a_friend_screen/models/tell_a_friend_model.dart';

/// A controller class for the TellAFriendScreen.
///
/// This class manages the state of the TellAFriendScreen, including the
/// current tellAFriendModelObj
class TellAFriendController extends GetxController {
  Rx<TellAFriendModel> tellAFriendModelObj = TellAFriendModel().obs;
}
