import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/maps_screen/models/maps_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MapsScreen.
///
/// This class manages the state of the MapsScreen, including the
/// current mapsModelObj
class MapsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<MapsModel> mapsModelObj = MapsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
