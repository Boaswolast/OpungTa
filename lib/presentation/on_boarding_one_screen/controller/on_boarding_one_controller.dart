import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/on_boarding_one_screen/models/on_boarding_one_model.dart';

/// A controller class for the OnBoardingOneScreen.
///
/// This class manages the state of the OnBoardingOneScreen, including the
/// current onBoardingOneModelObj
class OnBoardingOneController extends GetxController {
  Rx<OnBoardingOneModel> onBoardingOneModelObj = OnBoardingOneModel().obs;
}
