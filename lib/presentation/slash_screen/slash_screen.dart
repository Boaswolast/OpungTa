import 'controller/slash_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SlashScreen extends GetWidget<SlashController> {
  const SlashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(
                flex: 47,
              ),
              Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.fillYellow.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 70.v,
                  width: 64.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 21.v),
              Text(
                "lbl_car_parking_app".tr,
                style: CustomTextStyles.headlineSmallOnPrimary,
              ),
              Spacer(
                flex: 52,
              ),
              SizedBox(
                width: 108.h,
                child: Divider(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
