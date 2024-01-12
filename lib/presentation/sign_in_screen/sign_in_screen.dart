import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/core/utils/validation_functions.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';
import 'package:getdrive_v11/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key})
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
                  horizontal: 20.h,
                  vertical: 11.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 54.v),
                    Text(
                      "lbl_sign_in2".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 18.v),
                    Text(
                      "msg_hi_welcome_back".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 96.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: CustomFloatingTextField(
                        controller: controller.emailController,
                        labelText: "lbl_email".tr,
                        labelStyle: theme.textTheme.bodyLarge!,
                        hintText: "lbl_email".tr,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Obx(
                        () => CustomFloatingTextField(
                          controller: controller.passwordController,
                          labelText: "lbl_password".tr,
                          labelStyle: theme.textTheme.bodyLarge!,
                          hintText: "lbl_password".tr,
                          textInputAction: TextInputAction.done,
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
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    _buildRememberForgotSection(),
                    SizedBox(height: 60.v),
                    CustomElevatedButton(
                      text: "lbl_sign_in2".tr,
                      margin: EdgeInsets.symmetric(horizontal: 10.h),
                    ),
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
  Widget _buildRememberForgotSection() {
    return SizedBox(
      height: 48.v,
      width: 311.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Opacity(
            opacity: 0.38,
            child: CustomImageView(
              imagePath: ImageConstant.imgUpload,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.centerLeft,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 34.h,
                top: 17.v,
                bottom: 14.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_remember_me".tr,
                      style: CustomTextStyles
                          .labelLargeRobotoOnPrimaryContainerSemiBold,
                    ),
                  ),
                  Text(
                    "msg_forgot_your_password".tr,
                    style: CustomTextStyles.labelLargeRobotoOnPrimaryContainer
                        .copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
