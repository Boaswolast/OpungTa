import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_history_payment_tab_container_page/apps_history_payment_tab_container_page.dart';
import 'package:getdrive_v11/presentation/home_page/home_page.dart';
import 'package:getdrive_v11/presentation/profile_page/profile_page.dart';
import 'package:getdrive_v11/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
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
