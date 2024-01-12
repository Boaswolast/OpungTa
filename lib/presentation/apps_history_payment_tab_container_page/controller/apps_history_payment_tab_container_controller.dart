import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_history_payment_tab_container_page/models/apps_history_payment_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AppsHistoryPaymentTabContainerPage.
///
/// This class manages the state of the AppsHistoryPaymentTabContainerPage, including the
/// current appsHistoryPaymentTabContainerModelObj
class AppsHistoryPaymentTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AppsHistoryPaymentTabContainerController(
      this.appsHistoryPaymentTabContainerModelObj);

  Rx<AppsHistoryPaymentTabContainerModel>
      appsHistoryPaymentTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
