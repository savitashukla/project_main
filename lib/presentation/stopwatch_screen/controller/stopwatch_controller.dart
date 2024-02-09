import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/stopwatch_screen/models/stopwatch_model.dart';

/// A controller class for the StopwatchScreen.
///
/// This class manages the state of the StopwatchScreen, including the
/// current stopwatchModelObj
class StopwatchController extends GetxController {
  Rx<StopwatchModel> stopwatchModelObj = StopwatchModel().obs;
}
