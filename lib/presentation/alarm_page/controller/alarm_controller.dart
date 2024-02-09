import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/alarm_page/models/alarm_model.dart';

/// A controller class for the AlarmPage.
///
/// This class manages the state of the AlarmPage, including the
/// current alarmModelObj
class AlarmController extends GetxController {
  AlarmController(this.alarmModelObj);

  Rx<AlarmModel> alarmModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<bool> isSelectedSwitch3 = false.obs;

  Rx<bool> isSelectedSwitch4 = false.obs;

  Rx<bool> isSelectedSwitch5 = false.obs;
}
