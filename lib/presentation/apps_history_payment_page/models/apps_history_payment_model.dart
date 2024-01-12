import '../../../core/app_export.dart';
import 'listtransactionsection_item_model.dart';

/// This class defines the variables used in the [apps_history_payment_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AppsHistoryPaymentModel {
  Rx<List<ListtransactionsectionItemModel>> listtransactionsectionItemList =
      Rx([
    ListtransactionsectionItemModel(
        carParkingSelectionText: "Car Parking".obs,
        metroParkMasterText: "MetroPark Master".obs,
        senopatiJakartaText: "Senopati, Jakarta".obs,
        priceText: "Rp 15.000,-/hr".obs,
        transactionSuccessText: "Succesfully".obs),
    ListtransactionsectionItemModel(
        carParkingSelectionText: "Car Parking".obs,
        metroParkMasterText: "MetroPark Master".obs,
        senopatiJakartaText: "Senopati, Jakarta".obs,
        priceText: "Rp 15.000,-/hr".obs,
        transactionSuccessText: "Succesfully".obs),
    ListtransactionsectionItemModel(
        carParkingSelectionText: "Car Parking".obs,
        metroParkMasterText: "MetroPark Master".obs,
        senopatiJakartaText: "Senopati, Jakarta".obs,
        priceText: "Rp 15.000,-/hr".obs,
        transactionSuccessText: "Succesfully".obs)
  ]);
}
