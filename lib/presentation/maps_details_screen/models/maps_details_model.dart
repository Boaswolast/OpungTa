import '../../../core/app_export.dart';
import 'nearbycomponent_item_model.dart';

/// This class defines the variables used in the [maps_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MapsDetailsModel {
  Rx<List<NearbycomponentItemModel>> nearbycomponentItemList = Rx([
    NearbycomponentItemModel(
        carParkingImage: ImageConstant.imgLocationPict.obs,
        carParkingText: "Car Parking".obs,
        monasParkText: "Monas Park".obs,
        priceText: "Rp 15.000,-/hr".obs,
        timeImage: ImageConstant.imgClockGray70002.obs,
        timeText: "08 Mins".obs,
        spotsCarImage: ImageConstant.imgCar.obs,
        spotsCarText: "20 spots".obs)
  ]);
}
