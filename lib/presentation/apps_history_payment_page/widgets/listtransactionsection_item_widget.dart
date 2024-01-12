import '../controller/apps_history_payment_controller.dart';
import '../models/listtransactionsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ListtransactionsectionItemWidget extends StatelessWidget {
  ListtransactionsectionItemWidget(
    this.listtransactionsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtransactionsectionItemModel listtransactionsectionItemModelObj;

  var controller = Get.find<AppsHistoryPaymentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 66.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillGray20004.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Obx(
                          () => Text(
                            listtransactionsectionItemModelObj
                                .carParkingSelectionText!.value,
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Obx(
                        () => Text(
                          listtransactionsectionItemModelObj
                              .metroParkMasterText!.value,
                          style:
                              CustomTextStyles.titleSmallMontserratBlack900_1,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedinGray7000216x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 2.v,
                            ),
                            child: Obx(
                              () => Text(
                                listtransactionsectionItemModelObj
                                    .senopatiJakartaText!.value,
                                style: CustomTextStyles.labelMediumMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.v),
                      Obx(
                        () => Text(
                          listtransactionsectionItemModelObj.priceText!.value,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Obx(
                          () => Text(
                            listtransactionsectionItemModelObj
                                .transactionSuccessText!.value,
                            style: CustomTextStyles.labelMediumRobotoGreenA700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          CustomElevatedButton(
            height: 32.v,
            text: "lbl_e_ticket".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
          ),
        ],
      ),
    );
  }
}
