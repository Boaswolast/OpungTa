import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/slash_screen/models/slash_model.dart';

/// A controller class for the SlashScreen.
///
/// This class manages the state of the SlashScreen, including the
/// current slashModelObj
class SlashController extends GetxController {
  Rx<SlashModel> slashModelObj = SlashModel().obs;
}
