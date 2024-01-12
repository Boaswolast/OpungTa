import '../controller/apps_recently_parking_active_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppsRecentlyParkingActiveTabContainerScreen.
///
/// This class ensures that the AppsRecentlyParkingActiveTabContainerController is created when the
/// AppsRecentlyParkingActiveTabContainerScreen is first loaded.
class AppsRecentlyParkingActiveTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppsRecentlyParkingActiveTabContainerController());
  }
}
