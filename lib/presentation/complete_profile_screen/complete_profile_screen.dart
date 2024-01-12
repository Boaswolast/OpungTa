import 'controller/complete_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/core/utils/validation_functions.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';
import 'package:getdrive_v11/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class CompleteProfileScreen extends GetWidget<CompleteProfileController> {
  CompleteProfileScreen({Key? key})
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
                  horizontal: 13.h,
                  vertical: 11.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 54.v),
                    Text(
                      "msg_complete_your_profile".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 17.v),
                    Container(
                      width: 246.h,
                      margin: EdgeInsets.only(
                        left: 49.h,
                        right: 37.h,
                      ),
                      child: Text(
                        "msg_no_one_else_will".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                    SizedBox(height: 41.v),
                    Container(
                      height: 96.adaptSize,
                      width: 96.adaptSize,
                      padding: EdgeInsets.all(22.h),
                      decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder48,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorGray70002,
                        height: 48.v,
                        width: 44.h,
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildProfileImage(),
                    SizedBox(height: 8.v),
                    _buildUsernameField(),
                    SizedBox(height: 8.v),
                    _buildGenderField(),
                    SizedBox(height: 34.v),
                    _buildCompleteProfileButton(),
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
  Widget _buildProfileImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: CustomFloatingTextField(
        controller: controller.profileImageController,
        labelText: "lbl_name".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: CustomFloatingTextField(
        controller: controller.usernameFieldController,
        labelText: "lbl_username".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "lbl_username".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGenderField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: CustomFloatingTextField(
        controller: controller.genderFieldController,
        labelText: "lbl_gender".tr,
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "lbl_gender".tr,
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdownGray50004,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 56.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCompleteProfileButton() {
    return CustomElevatedButton(
      text: "msg_complete_profile".tr,
      margin: EdgeInsets.symmetric(horizontal: 17.h),
    );
  }
}
