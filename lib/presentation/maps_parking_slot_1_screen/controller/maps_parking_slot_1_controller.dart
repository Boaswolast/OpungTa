import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/maps_parking_slot_1_screen/models/maps_parking_slot_1_model.dart';

/// A controller class for the MapsParkingSlot1Screen.
///
/// This class manages the state of the MapsParkingSlot1Screen, including the
/// current mapsParkingSlot1ModelObj
class MapsParkingSlot1Controller extends GetxController {
  Rx<MapsParkingSlot1Model> mapsParkingSlot1ModelObj =
      MapsParkingSlot1Model().obs;

  Rx<int> sliderIndex = 0.obs;
}
