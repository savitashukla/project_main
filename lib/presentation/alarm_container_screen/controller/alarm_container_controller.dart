import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/alarm_container_screen/models/alarm_container_model.dart';

/// A controller class for the AlarmContainerScreen.
///
/// This class manages the state of the AlarmContainerScreen, including the
/// current alarmContainerModelObj
class AlarmContainerController extends GetxController {
  Rx<AlarmContainerModel> alarmContainerModelObj = AlarmContainerModel().obs;
}
