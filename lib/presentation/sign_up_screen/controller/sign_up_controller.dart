import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController passwordField1Controller = TextEditingController();

  TextEditingController passwordField2Controller = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    phoneNumberFieldController.dispose();
    passwordField1Controller.dispose();
    passwordField2Controller.dispose();
  }
}
