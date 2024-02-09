import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/email_screen/models/email_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EmailScreen.
///
/// This class manages the state of the EmailScreen, including the
/// current emailModelObj
class EmailController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<EmailModel> emailModelObj = EmailModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
