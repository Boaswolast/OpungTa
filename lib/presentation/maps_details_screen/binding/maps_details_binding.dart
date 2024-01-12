import '../controller/maps_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapsDetailsScreen.
///
/// This class ensures that the MapsDetailsController is created when the
/// MapsDetailsScreen is first loaded.
class MapsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapsDetailsController());
  }
}
