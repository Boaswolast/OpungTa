import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/core/utils/validation_functions.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';
import 'package:getdrive_v11/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 11.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 51.v),
                    Text(
                      "lbl_create_account".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 21.v),
                    Text(
                      "msg_fill_your_infromation".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 50.v),
                    _buildEmailField(),
                    SizedBox(height: 8.v),
                    _buildPhoneNumberField(),
                    SizedBox(height: 8.v),
                    _buildPasswordField1(),
                    SizedBox(height: 8.v),
                    _buildPasswordField2(),
                    SizedBox(height: 3.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 40.v,
                        width: 215.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_agree_with".tr,
                                        style:
                                            CustomTextStyles.labelLargeff000000,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "msg_terms_condition".tr,
                                        style:
                                            theme.textTheme.bodySmall!.copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 8.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        decoration: BoxDecoration(
                                          color: appTheme.gray90001,
                                          borderRadius: BorderRadius.circular(
                                            2.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconsCheckSmall,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgStateLayer,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              alignment: Alignment.centerLeft,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 37.v),
                    _buildSignUpButton(),
                    Spacer(),
                    SizedBox(
                      width: 108.h,
                      child: Divider(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: CustomFloatingTextField(
        controller: controller.emailFieldController,
        labelText: "lbl_email".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: CustomFloatingTextField(
        controller: controller.phoneNumberFieldController,
        labelText: "lbl_no_telp".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "lbl_no_telp".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Obx(
        () => CustomFloatingTextField(
          controller: controller.passwordField1Controller,
          labelText: "lbl_password".tr,
          labelStyle: theme.textTheme.bodyLarge!,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          obscureText: controller.isShowPassword.value,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Obx(
        () => CustomFloatingTextField(
          controller: controller.passwordField2Controller,
          labelText: "lbl_repeat_password".tr,
          labelStyle: theme.textTheme.bodyLarge!,
          hintText: "lbl_repeat_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: controller.isShowPassword1.value,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword1.value =
                  !controller.isShowPassword1.value;
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettingsGray70002,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
    );
  }
}
