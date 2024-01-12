import 'controller/on_boarding_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnBoardingFourScreen extends GetWidget<OnBoardingFourController> {
  const OnBoardingFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            border: Border.all(
              color: appTheme.blueGray500,
              width: 8.h,
              strokeAlign: strokeAlignOutside,
            ),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0.2),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.amber200,
                appTheme.yellow400B5,
                appTheme.lime900B2,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 10.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                Container(
                  width: 256.h,
                  margin: EdgeInsets.only(
                    left: 27.h,
                    right: 25.h,
                  ),
                  child: Text(
                    "msg_finding_the_best".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeOnPrimary,
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  width: 285.h,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    right: 13.h,
                  ),
                  child: Text(
                    "msg_find_the_best_parking".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallMulishOnPrimary,
                  ),
                ),
                SizedBox(height: 36.v),
                CustomElevatedButton(
                  text: "msg_let_s_get_started".tr,
                  margin: EdgeInsets.only(left: 10.h),
                  buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 34.h,
                    right: 37.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "msg_already_have_an".tr,
                        style:
                            CustomTextStyles.titleSmallMulishOnPrimaryContainer,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl_sign_in".tr,
                          style: CustomTextStyles
                              .titleSmallMulishOnPrimaryContainerExtraBold
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 39.v),
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
      ),
    );
  }
}
