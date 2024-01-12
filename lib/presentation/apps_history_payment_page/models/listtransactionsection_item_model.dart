import '../../../core/app_export.dart';

/// This class is used in the [listtransactionsection_item_widget] screen.
class ListtransactionsectionItemModel {
  ListtransactionsectionItemModel({
    this.carParkingSelectionText,
    this.metroParkMasterText,
    this.senopatiJakartaText,
    this.priceText,
    this.transactionSuccessText,
    this.id,
  }) {
    carParkingSelectionText = carParkingSelectionText ?? Rx("Car Parking");
    metroParkMasterText = metroParkMasterText ?? Rx("MetroPark Master");
    senopatiJakartaText = senopatiJakartaText ?? Rx("Senopati, Jakarta");
    priceText = priceText ?? Rx("Rp 15.000,-/hr");
    transactionSuccessText = transactionSuccessText ?? Rx("Succesfully");
    id = id ?? Rx("");
  }

  Rx<String>? carParkingSelectionText;

  Rx<String>? metroParkMasterText;

  Rx<String>? senopatiJakartaText;

  Rx<String>? priceText;

  Rx<String>? transactionSuccessText;

  Rx<String>? id;
}
