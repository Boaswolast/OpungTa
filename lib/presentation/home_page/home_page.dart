import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_subtitle.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:getdrive_v11/widgets/app_bar/custom_app_bar.dart';
import 'package:getdrive_v11/widgets/custom_drop_down.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';
import 'package:getdrive_v11/widgets/custom_search_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBluegray500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLocationAppBar(),
              SizedBox(
                height: 758.v,
                width: double.maxFinite,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 23.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15.v),
          CustomAppBar(
            height: 32.v,
            title: AppbarSubtitle(
              text: "lbl_location".tr,
              margin: EdgeInsets.only(left: 27.h),
            ),
            actions: [
              AppbarTrailingIconbuttonOne(
                imagePath: ImageConstant.imgMdiBellNotification,
                margin: EdgeInsets.symmetric(horizontal: 27.h),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedinOnprimary,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomDropDown(
                      width: 117.h,
                      icon: Container(
                        margin: EdgeInsets.only(),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownOnprimary,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                        ),
                      ),
                      hintText: "msg_jakarta_indonesia".tr,
                      items:
                          controller.homeModelObj.value.dropdownItemList!.value,
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              right: 27.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: CustomSearchView(
                      controller: controller.searchController,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillBlueGrayTL8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFilter,
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
