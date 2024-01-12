import '../controller/forget_the_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgetThePasswordScreen.
///
/// This class ensures that the ForgetThePasswordController is created when the
/// ForgetThePasswordScreen is first loaded.
class ForgetThePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetThePasswordController());
  }
}
