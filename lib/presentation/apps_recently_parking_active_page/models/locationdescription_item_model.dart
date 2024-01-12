import '../../../core/app_export.dart';

/// This class is used in the [locationdescription_item_widget] screen.
class LocationdescriptionItemModel {
  LocationdescriptionItemModel({
    this.locationName,
    this.text1,
    this.dateTime,
    this.text2,
    this.text3,
    this.id,
  }) {
    locationName = locationName ?? Rx("MetroPark Master");
    text1 = text1 ?? Rx("Near senopati, jakarta");
    dateTime = dateTime ?? Rx("26 July 2022 at 09.30 AM");
    text2 = text2 ?? Rx("2 Hrs");
    text3 = text3 ?? Rx("Rp 15.000");
    id = id ?? Rx("");
  }

  Rx<String>? locationName;

  Rx<String>? text1;

  Rx<String>? dateTime;

  Rx<String>? text2;

  Rx<String>? text3;

  Rx<String>? id;
}
