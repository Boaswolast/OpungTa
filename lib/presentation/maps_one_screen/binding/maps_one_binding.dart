import '../controller/maps_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapsOneScreen.
///
/// This class ensures that the MapsOneController is created when the
/// MapsOneScreen is first loaded.
class MapsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapsOneController());
  }
}
