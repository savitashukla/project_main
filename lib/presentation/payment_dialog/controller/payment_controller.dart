import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/payment_dialog/models/payment_model.dart';

/// A controller class for the PaymentDialog.
///
/// This class manages the state of the PaymentDialog, including the
/// current paymentModelObj
class PaymentController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;
}
