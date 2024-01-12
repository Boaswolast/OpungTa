import '../maps_details_screen/widgets/nearbycomponent_item_widget.dart';
import 'controller/maps_details_controller.dart';
import 'models/nearbycomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MapsDetailsScreen extends GetWidget<MapsDetailsController> {
  const MapsDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50003,
        body: SizedBox(
          height: 758.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildTwentyStack(),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 536.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          decoration: AppDecoration.fillOnPrimary,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 21.v),
                              Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Row(
                                  children: [
                                    _buildVehicleSelectionButton(),
                                    _buildVehicleSelectionButton1(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 14.v),
                              Padding(
                                padding: EdgeInsets.only(left: 25.h),
                                child: Text(
                                  "lbl_monash_park".tr,
                                  style: CustomTextStyles
                                      .titleLargeMontserratBlack900,
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Text(
                                  "msg_gambir_kecamatan".tr,
                                  style: CustomTextStyles.labelLargeGray50006,
                                ),
                              ),
                              SizedBox(height: 22.v),
                              Padding(
                                padding: EdgeInsets.only(left: 25.h),
                                child: Text(
                                  "lbl_about".tr,
                                  style:
                                      CustomTextStyles.titleSmallMulishBlack900,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Align(
                                alignment: Alignment.center,
                                child: Divider(
                                  color: appTheme.blueGray400,
                                  indent: 24.h,
                                  endIndent: 24.h,
                                ),
                              ),
                              SizedBox(height: 13.v),
                              _buildSeventyFourRow(),
                              SizedBox(height: 17.v),
                              Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Text(
                                  "lbl_description".tr,
                                  style: CustomTextStyles.labelLargeBlack900_1,
                                ),
                              ),
                              SizedBox(height: 9.v),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 303.h,
                                  margin: EdgeInsets.only(
                                    left: 29.h,
                                    right: 28.h,
                                  ),
                                  child: Text(
                                    "msg_lorem_ipsum_dolor".tr,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelMediumMulishBlack900
                                        .copyWith(
                                      height: 2.00,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.v),
                              Align(
                                alignment: Alignment.center,
                                child: Divider(
                                  color: appTheme.blueGray10001,
                                  indent: 42.h,
                                  endIndent: 42.h,
                                ),
                              ),
                              Spacer(),
                              _buildParkingSlotColumn(),
                            ],
                          ),
                        ),
                      ),
                      _buildNearbyParkingColumn(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyStack() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 374.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 374.v,
              width: 360.h,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                top: 41.v,
              ),
              child: CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(4.h),
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVehicleSelectionButton() {
    return CustomElevatedButton(
      height: 24.v,
      width: 80.h,
      text: "lbl_car_parking".tr,
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.labelMediumGray50006,
    );
  }

  /// Section Widget
  Widget _buildVehicleSelectionButton1() {
    return CustomElevatedButton(
      height: 24.v,
      width: 120.h,
      text: "msg_motorcycle_parking".tr,
      margin: EdgeInsets.only(left: 14.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.labelMediumGray50006,
    );
  }

  /// Section Widget
  Widget _buildSeventyFourRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 28.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClockGray70002,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 5.v,
                bottom: 3.v,
              ),
              child: Text(
                "lbl_08_mins_away".tr,
                style: CustomTextStyles.labelLargeBlack900,
              ),
            ),
            Spacer(),
            SizedBox(
              width: 140.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCar,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 5.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "msg_20_spots_available".tr,
                      style: CustomTextStyles.labelLargeBlack900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildParkingSlotButton() {
    return CustomElevatedButton(
      text: "lbl_parking_slot".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
    );
  }

  /// Section Widget
  Widget _buildParkingSlotColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildParkingSlotButton(),
          SizedBox(height: 9.v),
          SizedBox(
            width: 108.h,
            child: Divider(),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNearbyParkingColumn() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 14.h,
          bottom: 95.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "lbl_nearby_parkings".tr,
                style: CustomTextStyles.labelLargeBlack900_1,
              ),
            ),
            SizedBox(height: 2.v),
            SizedBox(
              height: 75.v,
              child: Obx(
                () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 9.h,
                    );
                  },
                  itemCount: controller.mapsDetailsModelObj.value
                      .nearbycomponentItemList.value.length,
                  itemBuilder: (context, index) {
                    NearbycomponentItemModel model = controller
                        .mapsDetailsModelObj
                        .value
                        .nearbycomponentItemList
                        .value[index];
                    return NearbycomponentItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
