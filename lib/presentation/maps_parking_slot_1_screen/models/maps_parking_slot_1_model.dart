import '../../../core/app_export.dart';
import 'ninetyseven_item_model.dart';

/// This class defines the variables used in the [maps_parking_slot_1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MapsParkingSlot1Model {
  Rx<List<NinetysevenItemModel>> ninetysevenItemList = Rx([
    NinetysevenItemModel(user: ImageConstant.imgUserGray70002.obs),
    NinetysevenItemModel(user: ImageConstant.imgUserGray70002.obs),
    NinetysevenItemModel(user: ImageConstant.imgUserGray70002.obs),
    NinetysevenItemModel(user: ImageConstant.imgUserGray7000247x53.obs),
    NinetysevenItemModel(user: ImageConstant.imgUserGray7000247x53.obs)
  ]);
}
