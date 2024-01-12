import '../controller/maps_parking_slot_1_controller.dart';
import '../models/ninetyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';

// ignore: must_be_immutable
class NinetysevenItemWidget extends StatelessWidget {
  NinetysevenItemWidget(
    this.ninetysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetysevenItemModel ninetysevenItemModelObj;

  var controller = Get.find<MapsParkingSlot1Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 60.v,
        width: 100.h,
        margin: EdgeInsets.only(
          top: 176.v,
          bottom: 88.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.fillBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Obx(
          () => CustomImageView(
            imagePath: ninetysevenItemModelObj.user!.value,
            height: 47.v,
            width: 53.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
