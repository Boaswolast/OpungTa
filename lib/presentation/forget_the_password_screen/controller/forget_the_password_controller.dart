import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/forget_the_password_screen/models/forget_the_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgetThePasswordScreen.
///
/// This class manages the state of the ForgetThePasswordScreen, including the
/// current forgetThePasswordModelObj
class ForgetThePasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ForgetThePasswordModel> forgetThePasswordModelObj =
      ForgetThePasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
