import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_history_payment_page/models/apps_history_payment_model.dart';

/// A controller class for the AppsHistoryPaymentPage.
///
/// This class manages the state of the AppsHistoryPaymentPage, including the
/// current appsHistoryPaymentModelObj
class AppsHistoryPaymentController extends GetxController {
  AppsHistoryPaymentController(this.appsHistoryPaymentModelObj);

  Rx<AppsHistoryPaymentModel> appsHistoryPaymentModelObj;
}
