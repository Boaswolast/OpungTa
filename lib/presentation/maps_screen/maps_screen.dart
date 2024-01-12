import 'controller/maps_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_history_payment_tab_container_page/apps_history_payment_tab_container_page.dart';
import 'package:getdrive_v11/presentation/home_page/home_page.dart';
import 'package:getdrive_v11/presentation/profile_page/profile_page.dart';
import 'package:getdrive_v11/widgets/custom_bottom_bar.dart';
import 'package:getdrive_v11/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MapsScreen extends GetWidget<MapsController> {
  const MapsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 95.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            border: Border.all(
              color: appTheme.blueGray500,
              width: 8.h,
              strokeAlign: strokeAlignOutside,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup140,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    right: 8.h,
                  ),
                  child: CustomSearchView(
                    controller: controller.searchController,
                    borderDecoration: SearchViewStyleHelper.fillGray,
                    fillColor: appTheme.gray50,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
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
