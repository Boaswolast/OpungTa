import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/maps_parking_slot_2_dialog/models/maps_parking_slot_2_model.dart';

/// A controller class for the MapsParkingSlot2Dialog.
///
/// This class manages the state of the MapsParkingSlot2Dialog, including the
/// current mapsParkingSlot2ModelObj
class MapsParkingSlot2Controller extends GetxController {
  Rx<MapsParkingSlot2Model> mapsParkingSlot2ModelObj =
      MapsParkingSlot2Model().obs;
}
