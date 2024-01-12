import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/access_location_screen/models/access_location_model.dart';

/// A controller class for the AccessLocationScreen.
///
/// This class manages the state of the AccessLocationScreen, including the
/// current accessLocationModelObj
class AccessLocationController extends GetxController {
  Rx<AccessLocationModel> accessLocationModelObj = AccessLocationModel().obs;
}
