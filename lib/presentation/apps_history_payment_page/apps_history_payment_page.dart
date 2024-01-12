import '../apps_history_payment_page/widgets/listtransactionsection_item_widget.dart';
import 'controller/apps_history_payment_controller.dart';
import 'models/apps_history_payment_model.dart';
import 'models/listtransactionsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';
import 'package:getdrive_v11/widgets/custom_icon_button.dart';
import 'package:getdrive_v11/widgets/custom_outlined_button.dart';

class AppsHistoryPaymentPage extends StatelessWidget {
  AppsHistoryPaymentPage({Key? key})
      : super(
          key: key,
        );

  AppsHistoryPaymentController controller =
      Get.put(AppsHistoryPaymentController(AppsHistoryPaymentModel().obs));

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
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: Column(
                  children: [
                    _buildVehicleSection(),
                    SizedBox(height: 26.v),
                    _buildListTransactionSection(),
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
  Widget _buildVehicleSection() {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
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
  Widget _buildListTransactionSection() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: controller.appsHistoryPaymentModelObj.value
            .listtransactionsectionItemList.value.length,
        itemBuilder: (context, index) {
          ListtransactionsectionItemModel model = controller
              .appsHistoryPaymentModelObj
              .value
              .listtransactionsectionItemList
              .value[index];
          return ListtransactionsectionItemWidget(
            model,
          );
        },
      ),
    );
  }
}
