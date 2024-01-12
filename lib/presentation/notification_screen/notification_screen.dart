import 'controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 11.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(
                flex: 44,
              ),
              Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 31.h,
                  vertical: 32.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 25.v),
              Container(
                width: 258.h,
                margin: EdgeInsets.symmetric(horizontal: 22.h),
                child: Text(
                  "msg_enable_notification".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    height: 1.14,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 201.h,
                child: Text(
                  "msg_enable_notification2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "msg_allow_notification".tr,
              ),
              SizedBox(height: 28.v),
              Text(
                "lbl_maybe_later".tr,
                style: CustomTextStyles.titleMediumMulishBluegray50002,
              ),
              Spacer(
                flex: 55,
              ),
              SizedBox(
                width: 108.h,
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
