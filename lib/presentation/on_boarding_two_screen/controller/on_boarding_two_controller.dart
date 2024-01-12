import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/on_boarding_two_screen/models/on_boarding_two_model.dart';

/// A controller class for the OnBoardingTwoScreen.
///
/// This class manages the state of the OnBoardingTwoScreen, including the
/// current onBoardingTwoModelObj
class OnBoardingTwoController extends GetxController {
  Rx<OnBoardingTwoModel> onBoardingTwoModelObj = OnBoardingTwoModel().obs;
}
