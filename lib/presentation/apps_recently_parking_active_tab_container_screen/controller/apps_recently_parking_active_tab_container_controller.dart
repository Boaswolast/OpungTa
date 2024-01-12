import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_recently_parking_active_tab_container_screen/models/apps_recently_parking_active_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AppsRecentlyParkingActiveTabContainerScreen.
///
/// This class manages the state of the AppsRecentlyParkingActiveTabContainerScreen, including the
/// current appsRecentlyParkingActiveTabContainerModelObj
class AppsRecentlyParkingActiveTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<AppsRecentlyParkingActiveTabContainerModel>
      appsRecentlyParkingActiveTabContainerModelObj =
      AppsRecentlyParkingActiveTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
