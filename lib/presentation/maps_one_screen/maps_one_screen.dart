import 'controller/maps_one_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_history_payment_tab_container_page/apps_history_payment_tab_container_page.dart';
import 'package:getdrive_v11/presentation/home_page/home_page.dart';
import 'package:getdrive_v11/presentation/profile_page/profile_page.dart';
import 'package:getdrive_v11/widgets/custom_bottom_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class MapsOneScreen extends GetWidget<MapsOneController> {
  MapsOneScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
                ImageConstant.imgGroup147,
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
                _buildMap(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap() {
    return SizedBox(
      height: 642.v,
      width: 352.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
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
