import '../controller/maps_details_controller.dart';
import '../models/nearbycomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class NearbycomponentItemWidget extends StatelessWidget {
  NearbycomponentItemWidget(
    this.nearbycomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NearbycomponentItemModel nearbycomponentItemModelObj;

  var controller = Get.find<MapsDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 1.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray20003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 210.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: nearbycomponentItemModelObj.carParkingImage!.value,
              height: 50.v,
              width: 69.h,
              radius: BorderRadius.circular(
                16.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 3.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.v,
                  width: 45.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 7.v,
                          width: 45.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Obx(
                          () => Text(
                            nearbycomponentItemModelObj.carParkingText!.value,
                            style: CustomTextStyles.montserratGray50006Medium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 106.h,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      right: 2.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            nearbycomponentItemModelObj.monasParkText!.value,
                            style: CustomTextStyles.labelSmallBlack900,
                          ),
                        ),
                        Obx(
                          () => Text(
                            nearbycomponentItemModelObj.priceText!.value,
                            style: CustomTextStyles.montserratGray50006,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 108.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 35.h,
                                margin: EdgeInsets.only(right: 3.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Obx(
                                      () => CustomImageView(
                                        imagePath: nearbycomponentItemModelObj
                                            .timeImage!.value,
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        nearbycomponentItemModelObj
                                            .timeText!.value,
                                        style: CustomTextStyles.mulishBlack900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 38.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Obx(
                                        () => CustomImageView(
                                          imagePath: nearbycomponentItemModelObj
                                              .spotsCarImage!.value,
                                          height: 8.adaptSize,
                                          width: 8.adaptSize,
                                          margin: EdgeInsets.only(bottom: 1.v),
                                        ),
                                      ),
                                      Obx(
                                        () => Text(
                                          nearbycomponentItemModelObj
                                              .spotsCarText!.value,
                                          style:
                                              CustomTextStyles.mulishBlack900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomElevatedButton(
                          height: 24.v,
                          width: 48.h,
                          text: "lbl_details".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                          buttonTextStyle: CustomTextStyles.robotoOnPrimary,
                        ),
                      ],
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
