import '../controller/maps_parking_slot_1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapsParkingSlot1Screen.
///
/// This class ensures that the MapsParkingSlot1Controller is created when the
/// MapsParkingSlot1Screen is first loaded.
class MapsParkingSlot1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapsParkingSlot1Controller());
  }
}
