import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/timer_page/models/timer_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A controller class for the TimerPage.
///
/// This class manages the state of the TimerPage, including the
/// current timerModelObj
class TimerController extends GetxController {
  TimerController(this.timerModelObj);

  Rx<TimerModel> timerModelObj;

  Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);
}
