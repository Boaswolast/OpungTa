import '../controller/on_boarding_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnBoardingFourScreen.
///
/// This class ensures that the OnBoardingFourController is created when the
/// OnBoardingFourScreen is first loaded.
class OnBoardingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingFourController());
  }
}
