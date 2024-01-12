import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_recently_parking_active_page/models/apps_recently_parking_active_model.dart';

/// A controller class for the AppsRecentlyParkingActivePage.
///
/// This class manages the state of the AppsRecentlyParkingActivePage, including the
/// current appsRecentlyParkingActiveModelObj
class AppsRecentlyParkingActiveController extends GetxController {
  AppsRecentlyParkingActiveController(this.appsRecentlyParkingActiveModelObj);

  Rx<AppsRecentlyParkingActiveModel> appsRecentlyParkingActiveModelObj;
}
