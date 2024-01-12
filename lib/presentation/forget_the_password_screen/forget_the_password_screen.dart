import 'controller/forget_the_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/core/utils/validation_functions.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';
import 'package:getdrive_v11/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class ForgetThePasswordScreen extends GetWidget<ForgetThePasswordController> {
  ForgetThePasswordScreen({Key? key})
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
                    SizedBox(height: 50.v),
                    Text(
                      "lbl_new_password".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      width: 294.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 8.h,
                      ),
                      child: Text(
                        "msg_your_new_password".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 27,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: Obx(
                        () => CustomFloatingTextField(
                          controller: controller.passwordController,
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
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: Obx(
                        () => CustomFloatingTextField(
                          controller: controller.confirmpasswordController,
                          labelText: "msg_confirm_password".tr,
                          labelStyle: theme.textTheme.bodyLarge!,
                          hintText: "msg_confirm_password".tr,
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
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 48.v),
                    CustomElevatedButton(
                      text: "msg_create_new_password".tr,
                      margin: EdgeInsets.only(right: 8.h),
                    ),
                    Spacer(
                      flex: 72,
                    ),
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
}
