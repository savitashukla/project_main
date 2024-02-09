import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/sign_in_page/models/sign_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInPage.
///
/// This class manages the state of the SignInPage, including the
/// current signInModelObj
class SignInController extends GetxController {
  SignInController(this.signInModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  Rx<SignInModel> signInModelObj;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    languageController.dispose();
  }
}
