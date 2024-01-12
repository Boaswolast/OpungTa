import 'controller/on_boarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnBoardingTwoScreen extends GetWidget<OnBoardingTwoController> {
  const OnBoardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2,
                height: 406.v,
                width: 360.h,
              ),
              SizedBox(height: 78.v),
              Text(
                "msg_pay_get_the_ticket".tr,
                style: CustomTextStyles.headlineSmallBluegray500,
              ),
              SizedBox(height: 22.v),
              SizedBox(
                width: 206.h,
                child: Text(
                  "msg_instant_payment".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumRobotoFlexBluegray500
                      .copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(height: 47.v),
              _buildNavigationPage(),
              SizedBox(height: 74.v),
              SizedBox(
                width: 108.h,
                child: Divider(),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationPage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(3.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeftGray70002,
            ),
          ),
          Container(
            height: 14.v,
            margin: EdgeInsets.symmetric(vertical: 13.v),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 10,
                activeDotColor: appTheme.blueGray30001,
                dotColor: appTheme.blueGray100,
                activeDotScale: 1.75,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(3.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgPlay,
            ),
          ),
        ],
      ),
    );
  }
}
