import '../controller/maps_navigation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapsNavigationScreen.
///
/// This class ensures that the MapsNavigationController is created when the
/// MapsNavigationScreen is first loaded.
class MapsNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapsNavigationController());
  }
}
