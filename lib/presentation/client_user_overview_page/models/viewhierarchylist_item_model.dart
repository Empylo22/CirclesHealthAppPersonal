import '../../../core/app_export.dart';/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {ViewhierarchylistItemModel({this.workplaceRelationshipsText, this.completedText, this.gradeText, this.id, }) { workplaceRelationshipsText = workplaceRelationshipsText  ?? Rx("Workplace relationships and interactions 2");completedText = completedText  ?? Rx("Completed!");gradeText = gradeText  ?? Rx("Grade: 96%");id = id  ?? Rx(""); }

Rx<String>? workplaceRelationshipsText;

Rx<String>? completedText;

Rx<String>? gradeText;

Rx<String>? id;

 }
