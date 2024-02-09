import 'package:empylo/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [profile_setup_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileSetupModel {
  Rx<List<SelectionPopupModel>> genderDropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Male",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Female",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Others",
    )
  ]);
  Rx<List<SelectionPopupModel>> locationDropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "United States",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "United Kingdom",
    ),
    SelectionPopupModel(
      id: 3,
      title: "United Arab Emirates",
    )
  ]);
}
