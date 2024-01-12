import 'controller/apps_history_payment_tab_container_controller.dart';
import 'models/apps_history_payment_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/presentation/apps_history_payment_page/apps_history_payment_page.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:getdrive_v11/widgets/app_bar/appbar_title.dart';
import 'package:getdrive_v11/widgets/app_bar/custom_app_bar.dart';

class AppsHistoryPaymentTabContainerPage extends StatelessWidget {
  AppsHistoryPaymentTabContainerPage({Key? key})
      : super(
          key: key,
        );

  AppsHistoryPaymentTabContainerController controller = Get.put(
      AppsHistoryPaymentTabContainerController(
          AppsHistoryPaymentTabContainerModel().obs));

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
              _buildHistoryStack(),
              SizedBox(
                height: 514.9.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    AppsHistoryPaymentPage(),
                    AppsHistoryPaymentPage(),
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
  Widget _buildHistoryStack() {
    return SizedBox(
      height: 148.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            height: 146.v,
            leadingWidth: 58.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 26.h,
                top: 48.v,
                bottom: 66.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_transaction".tr,
              margin: EdgeInsets.only(
                top: 47.v,
                bottom: 67.v,
              ),
            ),
            styleType: Style.bgFill,
          ),
          SizedBox(
            height: 36.v,
            width: 305.h,
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
                    "lbl_pay_ti".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "msg_history_transaction".tr,
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
