import '../controller/slash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SlashScreen.
///
/// This class ensures that the SlashController is created when the
/// SlashScreen is first loaded.
class SlashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SlashController());
  }
}
