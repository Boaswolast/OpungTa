import '../../../core/app_export.dart';

/// This class is used in the [ninetyseven_item_widget] screen.
class NinetysevenItemModel {
  NinetysevenItemModel({
    this.user,
    this.id,
  }) {
    user = user ?? Rx(ImageConstant.imgUserGray70002);
    id = id ?? Rx("");
  }

  Rx<String>? user;

  Rx<String>? id;
}
