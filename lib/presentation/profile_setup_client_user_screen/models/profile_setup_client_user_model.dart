import 'package:empylo/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [profile_setup_client_user_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileSetupClientUserModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "0-9",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "10-19",
    ),
    SelectionPopupModel(
      id: 3,
      title: "20-29",
    ),
    SelectionPopupModel(
      id: 4,
      title: "30-39",
    ),
    SelectionPopupModel(
      id: 5,
      title: "40-49",
    ),
    SelectionPopupModel(
      id: 6,
      title: "50-59",
    ),
    SelectionPopupModel(
      id: 7,
      title: "60-69",
    ),
    SelectionPopupModel(
      id: 8,
      title: "70-79",
    ),
    SelectionPopupModel(
      id: 9,
      title: "80-89",
    ),
    SelectionPopupModel(
      id: 10,
      title: "90-99",
    ),
    SelectionPopupModel(
      id: 11,
      title: "100-109",
    ),
    SelectionPopupModel(
      id: 12,
      title: "110-119",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList4 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList5 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList6 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
