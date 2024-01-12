import '../maps_parking_slot_1_screen/widgets/ninetyseven_item_widget.dart';
import 'controller/maps_parking_slot_1_controller.dart';
import 'models/ninetyseven_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class MapsParkingSlot1Screen extends GetWidget<MapsParkingSlot1Controller> {
  const MapsParkingSlot1Screen({Key? key})
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
            horizontal: 26.h,
            vertical: 11.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 45.v),
              _buildLocationTitle(),
              SizedBox(height: 48.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 18.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60.v,
                      width: 100.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserGray70002,
                        height: 47.v,
                        width: 53.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillYellowF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "lbl_640".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "lbl_pending".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 100.h,
                  child: Divider(
                    color: appTheme.blueGray100,
                    indent: 30.h,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 18.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60.v,
                      width: 100.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserGray70002,
                        height: 47.v,
                        width: 53.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      height: 60.v,
                      width: 100.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserGray7000247x53,
                        height: 47.v,
                        width: 53.h,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 99.h,
                  child: Divider(
                    color: appTheme.blueGray100,
                    indent: 29.h,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              SizedBox(
                height: 324.v,
                width: 277.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    _buildNinetySeven(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 76.v),
                        child: SizedBox(
                          width: 82.h,
                          child: Divider(
                            color: appTheme.blueGray100,
                            indent: 12.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.v),
              _buildNavigationPage(),
              SizedBox(height: 47.v),
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
  Widget _buildLocationTitle() {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_monas_parking".tr,
              style: CustomTextStyles.titleLargeMedium,
            ),
          ),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL12,
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySeven() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 324.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller
            .mapsParkingSlot1ModelObj.value.ninetysevenItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          NinetysevenItemModel model = controller
              .mapsParkingSlot1ModelObj.value.ninetysevenItemList.value[index];
          return NinetysevenItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationPage() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Spacer(
            flex: 52,
          ),
          Container(
            height: 14.v,
            margin: EdgeInsets.symmetric(vertical: 13.v),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 13,
                activeDotColor: appTheme.blueGray30001,
                dotColor: appTheme.blueGray100,
                activeDotScale: 1.75,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
          Spacer(
            flex: 47,
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
