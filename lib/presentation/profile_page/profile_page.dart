import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_title.dart';
import 'package:getdrive_v11/widgets/app_bar/custom_app_bar.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                decoration: AppDecoration.fillBluegray100.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUser,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Text(
                "lbl_joi_hadi2".tr,
                style: CustomTextStyles.headlineSmallGray600,
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPaymentMethods(
                  thumbsUpImage: ImageConstant.imgLock,
                  paymentMethodsText: "lbl_your_profile".tr,
                ),
              ),
              SizedBox(height: 16.v),
              Divider(
                color: appTheme.gray200,
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPaymentMethods(
                  thumbsUpImage: ImageConstant.imgThumbsUp,
                  paymentMethodsText: "lbl_payment_methods".tr,
                ),
              ),
              SizedBox(height: 15.v),
              Divider(
                color: appTheme.gray200,
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPaymentMethods(
                  thumbsUpImage: ImageConstant.imgClock,
                  paymentMethodsText: "lbl_my_wallet".tr,
                ),
              ),
              SizedBox(height: 18.v),
              Divider(
                color: appTheme.gray200,
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPaymentMethods(
                  thumbsUpImage: ImageConstant.imgSearch,
                  paymentMethodsText: "lbl_settings".tr,
                ),
              ),
              SizedBox(height: 11.v),
              Divider(
                color: appTheme.gray200,
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPaymentMethods(
                  thumbsUpImage: ImageConstant.imgVideoCamera,
                  paymentMethodsText: "lbl_help_center".tr,
                ),
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray200,
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPaymentMethods(
                  thumbsUpImage: ImageConstant.imgLocation,
                  paymentMethodsText: "lbl_privacy_policy".tr,
                ),
              ),
              SizedBox(height: 14.v),
              Divider(
                color: appTheme.gray200,
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPaymentMethods(
                  thumbsUpImage: ImageConstant.imgArrowDownGray50002,
                  paymentMethodsText: "lbl_logout".tr,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_profile".tr,
      ),
    );
  }

  /// Common widget
  Widget _buildPaymentMethods({
    required String thumbsUpImage,
    required String paymentMethodsText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: thumbsUpImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
          ),
          child: Text(
            paymentMethodsText,
            style: CustomTextStyles.titleMediumMulishGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
