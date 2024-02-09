import '../controller/stopwatch_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StopwatchScreen.
///
/// This class ensures that the StopwatchController is created when the
/// StopwatchScreen is first loaded.
class StopwatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StopwatchController());
  }
}
