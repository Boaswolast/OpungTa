import '../../../core/app_export.dart';
import 'locationdescription_item_model.dart';
import 'locationdetails_item_model.dart';

/// This class defines the variables used in the [apps_recently_parking_active_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AppsRecentlyParkingActiveModel {
  Rx<List<LocationdescriptionItemModel>> locationdescriptionItemList = Rx([
    LocationdescriptionItemModel(
        locationName: "MetroPark Master".obs,
        text1: "Near senopati, jakarta".obs,
        dateTime: "26 July 2022 at 09.30 AM".obs,
        text2: "2 Hrs".obs,
        text3: "Rp 15.000".obs),
    LocationdescriptionItemModel(
        locationName: "MetroPark Master".obs,
        text1: "Near senopati, jakarta".obs,
        dateTime: "26 July 2022 at 09.30 AM".obs,
        text2: "2 Hrs".obs,
        text3: "Rp 15.000".obs)
  ]);

  Rx<List<LocationdetailsItemModel>> locationdetailsItemList = Rx([
    LocationdetailsItemModel(
        locationName: "MetroPark Master".obs,
        timerText: "2 Hrs".obs,
        locationText: "Near senopati, jakarta".obs,
        dateTime: "26 July 2022 at 09.30 AM".obs,
        priceText: "Rp 15.000".obs)
  ]);
}
