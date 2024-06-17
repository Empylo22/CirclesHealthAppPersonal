import 'frame_item_model.dart';
import 'frame2_item_model.dart';
import 'frame4_item_model.dart';
import 'frame6_item_model.dart';
import 'frame8_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [index_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IndexModel {
  Rx<List<FrameItemModel>> frameItemList =
      Rx(List.generate(5, (index) => FrameItemModel()));

  Rx<List<Frame2ItemModel>> frame2ItemList =
      Rx(List.generate(5, (index) => Frame2ItemModel()));

  Rx<List<Frame4ItemModel>> frame4ItemList =
      Rx(List.generate(5, (index) => Frame4ItemModel()));

  Rx<List<Frame6ItemModel>> frame6ItemList =
      Rx(List.generate(5, (index) => Frame6ItemModel()));

  Rx<List<Frame8ItemModel>> frame8ItemList =
      Rx(List.generate(5, (index) => Frame8ItemModel()));
}
