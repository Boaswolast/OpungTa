import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/maps_one_screen/models/maps_one_model.dart';

/// A controller class for the MapsOneScreen.
///
/// This class manages the state of the MapsOneScreen, including the
/// current mapsOneModelObj
class MapsOneController extends GetxController {
  Rx<MapsOneModel> mapsOneModelObj = MapsOneModel().obs;
}
