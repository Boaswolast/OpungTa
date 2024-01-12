import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Slash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.slashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On Boarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On Boarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On Boarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "On Boarding Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forget the password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgetThePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification set successfully ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSetSuccessfullyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Complete Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.completeProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Access Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accessLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Maps".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Maps One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Maps (Parking Slot 1)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mapsParkingSlot1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Maps (navigation)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapsNavigationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Maps (Details)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapsDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Apps(recently parking active) - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .appsRecentlyParkingActiveTabContainerScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
