import '../controller/notification_set_successfully_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationSetSuccessfullyScreen.
///
/// This class ensures that the NotificationSetSuccessfullyController is created when the
/// NotificationSetSuccessfullyScreen is first loaded.
class NotificationSetSuccessfullyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationSetSuccessfullyController());
  }
}
