import '../controller/access_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccessLocationScreen.
///
/// This class ensures that the AccessLocationController is created when the
/// AccessLocationScreen is first loaded.
class AccessLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccessLocationController());
  }
}
