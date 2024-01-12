import '../controller/apps_recently_parking_active_controller.dart';
import '../models/locationdescription_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';

// ignore: must_be_immutable
class LocationdescriptionItemWidget extends StatelessWidget {
  LocationdescriptionItemWidget(
    this.locationdescriptionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LocationdescriptionItemModel locationdescriptionItemModelObj;

  var controller = Get.find<AppsRecentlyParkingActiveController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBluegray400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 4.v,
            ),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    locationdescriptionItemModelObj.locationName!.value,
                    style:
                        CustomTextStyles.titleSmallMontserratBlack900SemiBold,
                  ),
                ),
                SizedBox(height: 6.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          locationdescriptionItemModelObj.text1!.value,
                          style: CustomTextStyles.labelMediumMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    locationdescriptionItemModelObj.dateTime!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                            locationdescriptionItemModelObj.text2!.value,
                            style: CustomTextStyles.labelMediumGray70002,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSearchGray70002,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Obx(
                      () => Text(
                        locationdescriptionItemModelObj.text3!.value,
                        style: CustomTextStyles.labelMediumBluegray400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
