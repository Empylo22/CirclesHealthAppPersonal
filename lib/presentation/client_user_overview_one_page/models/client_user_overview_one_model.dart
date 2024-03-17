import '../../../core/app_export.dart';import 'healthmanagementcomponent_item_model.dart';/// This class defines the variables used in the [client_user_overview_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ClientUserOverviewOneModel {Rx<List<HealthmanagementcomponentItemModel>> healthmanagementcomponentItemList = Rx([HealthmanagementcomponentItemModel(healthManagementImage:ImageConstant.imgRectangle76.obs,healthManagementText: "Health Management ".obs,calendarText: "20 Jan, 2024".obs,clockText: "04:00pm".obs)]);

 }
