import 'controller/notification_set_successfully_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:getdrive_v11/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationSetSuccessfullyScreen
    extends GetWidget<NotificationSetSuccessfullyController> {
  const NotificationSetSuccessfullyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              Spacer(
                flex: 33,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorGray70002110x110,
                height: 110.adaptSize,
                width: 110.adaptSize,
              ),
              SizedBox(height: 52.v),
              SizedBox(
                width: 212.h,
                child: Text(
                  "msg_notification_set".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    height: 1.14,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 204.h,
                child: Text(
                  "msg_you_ll_receive_any".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
              Spacer(
                flex: 66,
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgPlayGray70002,
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }
}
