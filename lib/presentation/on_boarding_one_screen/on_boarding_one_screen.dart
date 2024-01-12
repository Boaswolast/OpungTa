import 'controller/on_boarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnBoardingOneScreen extends GetWidget<OnBoardingOneController> {
  const OnBoardingOneScreen({Key? key})
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
              SizedBox(height: 44.v),
              SizedBox(
                width: 179.h,
                child: Text(
                  "msg_finding_nearby_parking".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBluegray500.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Container(
                width: 262.h,
                margin: EdgeInsets.symmetric(horizontal: 49.h),
                child: Text(
                  "msg_find_your_parking".tr,
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
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 28.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 14.v,
                        margin: EdgeInsets.symmetric(vertical: 13.v),
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: appTheme.blueGray300,
                            dotColor: appTheme.blueGray100,
                            activeDotScale: 1.75,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 89.h),
                        child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(3.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPlay,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
}
