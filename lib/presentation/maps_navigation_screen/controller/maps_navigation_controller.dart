import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/maps_navigation_screen/models/maps_navigation_model.dart';

/// A controller class for the MapsNavigationScreen.
///
/// This class manages the state of the MapsNavigationScreen, including the
/// current mapsNavigationModelObj
class MapsNavigationController extends GetxController {
  Rx<MapsNavigationModel> mapsNavigationModelObj = MapsNavigationModel().obs;
}
