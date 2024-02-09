import '../controller/alarm_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AlarmContainerScreen.
///
/// This class ensures that the AlarmContainerController is created when the
/// AlarmContainerScreen is first loaded.
class AlarmContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlarmContainerController());
  }
}
