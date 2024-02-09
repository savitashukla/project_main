import '../../../core/app_export.dart';

/// This class is used in the [clocklist_item_widget] screen.
class ClocklistItemModel {
  ClocklistItemModel({
    this.cityName,
    this.timeDifference,
    this.time,
    this.id,
  }) {
    cityName = cityName ?? Rx("New York");
    timeDifference = timeDifference ?? Rx("-6h");
    time = time ?? Rx("10:30 AM");
    id = id ?? Rx("");
  }

  Rx<String>? cityName;

  Rx<String>? timeDifference;

  Rx<String>? time;

  Rx<String>? id;
}
