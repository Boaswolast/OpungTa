import 'controller/access_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AccessLocationScreen extends GetWidget<AccessLocationController> {
  const AccessLocationScreen({Key? key})
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
                  horizontal: 39.h,
                  vertical: 32.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMail,
                  height: 56.v,
                  width: 38.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 21.v),
              SizedBox(
                width: 178.h,
                child: Text(
                  "msg_what_is_your_location".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    height: 1.14,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Container(
                width: 272.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "msg_we_need_to_know".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
              SizedBox(height: 36.v),
              CustomElevatedButton(
                text: "msg_allow_location_access".tr,
              ),
              SizedBox(height: 17.v),
              Text(
                "msg_enter_location_manually".tr,
                style: CustomTextStyles.titleMediumMulishBluegray50002Bold,
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
