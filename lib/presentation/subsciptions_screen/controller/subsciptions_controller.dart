import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/subsciptions_screen/models/subsciptions_model.dart';

/// A controller class for the SubsciptionsScreen.
///
/// This class manages the state of the SubsciptionsScreen, including the
/// current subsciptionsModelObj
class SubsciptionsController extends GetxController {
  Rx<SubsciptionsModel> subsciptionsModelObj = SubsciptionsModel().obs;
}
