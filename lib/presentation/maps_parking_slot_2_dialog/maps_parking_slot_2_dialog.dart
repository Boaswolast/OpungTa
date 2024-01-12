import 'controller/maps_parking_slot_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MapsParkingSlot2Dialog extends StatelessWidget {
  MapsParkingSlot2Dialog(this.controller, {Key? key}) : super(key: key);

  MapsParkingSlot2Controller controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230.h,
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 69.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgProfile,
                  height: 56.adaptSize,
                  width: 56.adaptSize),
              SizedBox(height: 29.v),
              SizedBox(
                  width: 185.h,
                  child: Text("msg_are_you_sure_wanna".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles
                          .titleSmallMontserratBlack900SemiBold_1
                          .copyWith(height: 1.43))),
              SizedBox(height: 8.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 119.h,
                      margin: EdgeInsets.only(left: 30.h),
                      child: Text("msg_you_will_be_guided".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelMediumMulishGray70002
                              .copyWith(height: 2.00)))),
              SizedBox(height: 26.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    height: 48.v,
                    width: 75.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
                    decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgUserOnprimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.center)),
                Container(
                    height: 48.v,
                    width: 75.h,
                    margin: EdgeInsets.only(left: 20.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
                    decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12),
                    child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.fillOnPrimary,
                        alignment: Alignment.centerLeft,
                        onTap: () {
                          onTapBtnClose();
                        },
                        child:
                            CustomImageView(imagePath: ImageConstant.imgClose)))
              ]),
              SizedBox(height: 11.v)
            ]));
  }

  /// Navigates to the previous screen.
  onTapBtnClose() {
    Get.back();
  }
}
