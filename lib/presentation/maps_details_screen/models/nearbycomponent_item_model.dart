import '../../../core/app_export.dart';

/// This class is used in the [nearbycomponent_item_widget] screen.
class NearbycomponentItemModel {
  NearbycomponentItemModel({
    this.carParkingImage,
    this.carParkingText,
    this.monasParkText,
    this.priceText,
    this.timeImage,
    this.timeText,
    this.spotsCarImage,
    this.spotsCarText,
    this.id,
  }) {
    carParkingImage = carParkingImage ?? Rx(ImageConstant.imgLocationPict);
    carParkingText = carParkingText ?? Rx("Car Parking");
    monasParkText = monasParkText ?? Rx("Monas Park");
    priceText = priceText ?? Rx("Rp 15.000,-/hr");
    timeImage = timeImage ?? Rx(ImageConstant.imgClockGray70002);
    timeText = timeText ?? Rx("08 Mins");
    spotsCarImage = spotsCarImage ?? Rx(ImageConstant.imgCar);
    spotsCarText = spotsCarText ?? Rx("20 spots");
    id = id ?? Rx("");
  }

  Rx<String>? carParkingImage;

  Rx<String>? carParkingText;

  Rx<String>? monasParkText;

  Rx<String>? priceText;

  Rx<String>? timeImage;

  Rx<String>? timeText;

  Rx<String>? spotsCarImage;

  Rx<String>? spotsCarText;

  Rx<String>? id;
}
