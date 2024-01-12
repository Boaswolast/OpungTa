import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/maps_details_screen/models/maps_details_model.dart';

/// A controller class for the MapsDetailsScreen.
///
/// This class manages the state of the MapsDetailsScreen, including the
/// current mapsDetailsModelObj
class MapsDetailsController extends GetxController {
  Rx<MapsDetailsModel> mapsDetailsModelObj = MapsDetailsModel().obs;
}
