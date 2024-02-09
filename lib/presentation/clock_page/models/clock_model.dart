import '../../../core/app_export.dart';
import 'clocklist_item_model.dart';

/// This class defines the variables used in the [clock_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ClockModel {
  Rx<List<ClocklistItemModel>> clocklistItemList = Rx([
    ClocklistItemModel(
        cityName: "New York".obs,
        timeDifference: "-6h".obs,
        time: "10:30 AM".obs),
    ClocklistItemModel(
        cityName: "Moscow".obs, timeDifference: "-3h".obs, time: "6:30 PM".obs)
  ]);
}
