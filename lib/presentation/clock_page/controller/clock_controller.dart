import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/clock_page/models/clock_model.dart';

/// A controller class for the ClockPage.
///
/// This class manages the state of the ClockPage, including the
/// current clockModelObj
class ClockController extends GetxController {
  ClockController(this.clockModelObj);

  Rx<ClockModel> clockModelObj;
}
