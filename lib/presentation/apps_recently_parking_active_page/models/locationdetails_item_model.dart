import '../../../core/app_export.dart';

/// This class is used in the [locationdetails_item_widget] screen.
class LocationdetailsItemModel {
  LocationdetailsItemModel({
    this.locationName,
    this.timerText,
    this.locationText,
    this.dateTime,
    this.priceText,
    this.id,
  }) {
    locationName = locationName ?? Rx("MetroPark Master");
    timerText = timerText ?? Rx("2 Hrs");
    locationText = locationText ?? Rx("Near senopati, jakarta");
    dateTime = dateTime ?? Rx("26 July 2022 at 09.30 AM");
    priceText = priceText ?? Rx("Rp 15.000");
    id = id ?? Rx("");
  }

  Rx<String>? locationName;

  Rx<String>? timerText;

  Rx<String>? locationText;

  Rx<String>? dateTime;

  Rx<String>? priceText;

  Rx<String>? id;
}
