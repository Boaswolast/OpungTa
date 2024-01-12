import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/on_boarding_three_screen/models/on_boarding_three_model.dart';

/// A controller class for the OnBoardingThreeScreen.
///
/// This class manages the state of the OnBoardingThreeScreen, including the
/// current onBoardingThreeModelObj
class OnBoardingThreeController extends GetxController {
  Rx<OnBoardingThreeModel> onBoardingThreeModelObj = OnBoardingThreeModel().obs;
}
