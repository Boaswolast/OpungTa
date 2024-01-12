import '../apps_recently_parking_active_page/widgets/locationdescription_item_widget.dart';
import '../apps_recently_parking_active_page/widgets/locationdetails_item_widget.dart';
import 'controller/apps_recently_parking_active_controller.dart';
import 'models/apps_recently_parking_active_model.dart';
import 'models/locationdescription_item_model.dart';
import 'models/locationdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';
import 'package:getdrive_v11/widgets/custom_outlined_button.dart';

class AppsRecentlyParkingActivePage extends StatelessWidget {
  AppsRecentlyParkingActivePage({Key? key})
      : super(
          key: key,
        );

  AppsRecentlyParkingActiveController controller = Get.put(
      AppsRecentlyParkingActiveController(
          AppsRecentlyParkingActiveModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBluegray5002,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Column(
                  children: [
                    _buildVehicleCategories(),
                    SizedBox(height: 22.v),
                    _buildLocationDescriptions(),
                    SizedBox(height: 9.v),
                    _buildLocationDetails(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVehicleCategories() {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            width: 68.h,
            text: "lbl_vehicle".tr,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Container(
            width: 68.h,
            margin: EdgeInsets.only(
              left: 12.h,
              bottom: 3.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              "lbl_categories".tr,
              style: CustomTextStyles.labelMediumGray70001,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL8,
            child: CustomImageView(
              imagePath: ImageConstant.imgFilter,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDescriptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_today".tr,
          style: CustomTextStyles.titleMediumMulishGray70003,
        ),
        SizedBox(height: 9.v),
        Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: controller.appsRecentlyParkingActiveModelObj.value
                  .locationdescriptionItemList.value.length,
              itemBuilder: (context, index) {
                LocationdescriptionItemModel model = controller
                    .appsRecentlyParkingActiveModelObj
                    .value
                    .locationdescriptionItemList
                    .value[index];
                return LocationdescriptionItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
        SizedBox(height: 25.v),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "lbl_yesterday".tr,
            style: CustomTextStyles.titleMediumMulishGray70003,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocationDetails() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller.appsRecentlyParkingActiveModelObj.value
              .locationdetailsItemList.value.length,
          itemBuilder: (context, index) {
            LocationdetailsItemModel model = controller
                .appsRecentlyParkingActiveModelObj
                .value
                .locationdetailsItemList
                .value[index];
            return LocationdetailsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
