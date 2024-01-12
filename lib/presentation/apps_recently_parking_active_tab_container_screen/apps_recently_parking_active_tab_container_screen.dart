import 'controller/apps_recently_parking_active_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_history_payment_tab_container_page/apps_history_payment_tab_container_page.dart';
import 'package:getdrive_v11/presentation/apps_recently_parking_active_page/apps_recently_parking_active_page.dart';
import 'package:getdrive_v11/presentation/home_page/home_page.dart';
import 'package:getdrive_v11/presentation/profile_page/profile_page.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_title.dart';
import 'package:getdrive_v11/widgets/app_bar/custom_app_bar.dart';
import 'package:getdrive_v11/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AppsRecentlyParkingActiveTabContainerScreen
    extends GetWidget<AppsRecentlyParkingActiveTabContainerController> {
  const AppsRecentlyParkingActiveTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHistoryStack(),
              SizedBox(
                height: 607.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    AppsRecentlyParkingActivePage(),
                    AppsRecentlyParkingActivePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistoryStack() {
    return SizedBox(
      height: 151.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomAppBar(
            height: 148.v,
            leadingWidth: 58.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 26.h,
                top: 48.v,
                bottom: 68.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_history".tr,
            ),
            styleType: Style.bgFill,
          ),
          Container(
            height: 41.v,
            width: 280.h,
            margin: EdgeInsets.only(left: 30.h),
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.black900.withOpacity(0.7),
              labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: appTheme.black900.withOpacity(0.7),
              unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
              indicatorColor: appTheme.blueGray400,
              tabs: [
                Tab(
                  child: Text(
                    "msg_recently_parking".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_transaction".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homegray70002:
        return AppRoutes.homePage;
      case BottomBarEnum.Linkedin:
        return "/";
      case BottomBarEnum.Grid:
        return AppRoutes.appsHistoryPaymentTabContainerPage;
      case BottomBarEnum.Lockgray70002:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.appsHistoryPaymentTabContainerPage:
        return AppsHistoryPaymentTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
