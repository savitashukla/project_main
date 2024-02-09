import '../controller/subsciptions_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubsciptionsScreen.
///
/// This class ensures that the SubsciptionsController is created when the
/// SubsciptionsScreen is first loaded.
class SubsciptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubsciptionsController());
  }
}
