import '../../../core/app_export.dart';import 'viewhierarchylist_item_model.dart';import 'healthmanagementlist_item_model.dart';/// This class defines the variables used in the [client_user_overview_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ClientUserOverviewModel {Rx<List<ViewhierarchylistItemModel>> viewhierarchylistItemList = Rx([ViewhierarchylistItemModel(workplaceRelationshipsText: "Workplace relationships and interactions 2".obs,completedText: "Completed!".obs,gradeText: "Grade: 96%".obs),ViewhierarchylistItemModel(workplaceRelationshipsText: "Workplace relationships and interactions 2".obs,completedText: "Completed!".obs,gradeText: "Grade: 96%".obs),ViewhierarchylistItemModel(workplaceRelationshipsText: "Workplace relationships and interactions 2".obs,completedText: "Completed!".obs,gradeText: "Grade: 96%".obs)]);

Rx<List<HealthmanagementlistItemModel>> healthmanagementlistItemList = Rx([HealthmanagementlistItemModel(healthManagementImage:ImageConstant.imgRectangle76.obs,healthManagementText: "Health Management ".obs,completedText: "Completed on 21 Jan, 2024".obs)]);

 }
