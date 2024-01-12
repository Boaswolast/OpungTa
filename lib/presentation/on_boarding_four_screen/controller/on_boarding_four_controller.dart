import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/on_boarding_four_screen/models/on_boarding_four_model.dart';

/// A controller class for the OnBoardingFourScreen.
///
/// This class manages the state of the OnBoardingFourScreen, including the
/// current onBoardingFourModelObj
class OnBoardingFourController extends GetxController {
  Rx<OnBoardingFourModel> onBoardingFourModelObj = OnBoardingFourModel().obs;
}
