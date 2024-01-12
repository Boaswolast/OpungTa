import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/notification_set_successfully_screen/models/notification_set_successfully_model.dart';

/// A controller class for the NotificationSetSuccessfullyScreen.
///
/// This class manages the state of the NotificationSetSuccessfullyScreen, including the
/// current notificationSetSuccessfullyModelObj
class NotificationSetSuccessfullyController extends GetxController {
  Rx<NotificationSetSuccessfullyModel> notificationSetSuccessfullyModelObj =
      NotificationSetSuccessfullyModel().obs;
}
