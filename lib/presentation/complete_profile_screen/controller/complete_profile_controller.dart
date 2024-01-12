import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/complete_profile_screen/models/complete_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CompleteProfileScreen.
///
/// This class manages the state of the CompleteProfileScreen, including the
/// current completeProfileModelObj
class CompleteProfileController extends GetxController {
  TextEditingController profileImageController = TextEditingController();

  TextEditingController usernameFieldController = TextEditingController();

  TextEditingController genderFieldController = TextEditingController();

  Rx<CompleteProfileModel> completeProfileModelObj = CompleteProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    profileImageController.dispose();
    usernameFieldController.dispose();
    genderFieldController.dispose();
  }
}
