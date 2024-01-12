import '../controller/apps_recently_parking_active_controller.dart';
import '../models/locationdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';

// ignore: must_be_immutable
class LocationdetailsItemWidget extends StatelessWidget {
  LocationdetailsItemWidget(
    this.locationdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LocationdetailsItemModel locationdetailsItemModelObj;

  var controller = Get.find<AppsRecentlyParkingActiveController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBluegray400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Obx(
                    () => Text(
                      locationdetailsItemModelObj.locationName!.value,
                      style:
                          CustomTextStyles.titleSmallMontserratBlack900SemiBold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClockGray7000216x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Obx(
                          () => Text(
                            locationdetailsItemModelObj.timerText!.value,
                            style: CustomTextStyles.labelMediumGray70002,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinGray7000212x10,
                  height: 12.v,
                  width: 10.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Obx(
                    () => Text(
                      locationdetailsItemModelObj.locationText!.value,
                      style: CustomTextStyles.labelMediumMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    locationdetailsItemModelObj.dateTime!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgSearchGray70002,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      locationdetailsItemModelObj.priceText!.value,
                      style: CustomTextStyles.labelMediumBluegray400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
