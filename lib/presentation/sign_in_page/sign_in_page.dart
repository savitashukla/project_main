import 'controller/sign_in_controller.dart';
import 'models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/core/utils/validation_functions.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_checkbox_button.dart';
import 'package:savita_s_application1/widgets/custom_elevated_button.dart';
import 'package:savita_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignInController controller = Get.put(SignInController(SignInModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: 386.h,
                            padding: EdgeInsets.symmetric(horizontal: 23.h),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 234.h,
                                      child: Text("lbl_welcome_to_abc".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.displayMedium!
                                              .copyWith(height: 1.10))),
                                  SizedBox(height: 28.v),
                                  CustomTextFormField(
                                      controller: controller.emailController,
                                      hintText: "lbl_abc_dsfkvis_dhs".tr,
                                      hintStyle: CustomTextStyles
                                          .bodyMediumBluegray500,
                                      textInputType: TextInputType.emailAddress,
                                      suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 20.v, 20.h, 20.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgCheck,
                                              height: 10.v,
                                              width: 14.h)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 50.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_email"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      contentPadding: EdgeInsets.only(
                                          left: 20.h, top: 16.v, bottom: 16.v)),
                                  SizedBox(height: 14.v),
                                  Obx(() => CustomTextFormField(
                                      controller: controller.languageController,
                                      hintText: "lbl".tr,
                                      hintStyle: CustomTextStyles
                                          .bodyMediumBluegray500,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 17.v, 20.h, 17.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEyeoff,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 50.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 20.h,
                                          top: 16.v,
                                          bottom: 16.v))),
                                  SizedBox(height: 20.v),
                                  _buildSignInRow(),
                                  SizedBox(height: 32.v),
                                  CustomElevatedButton(
                                      text: "lbl_sign_in".tr,
                                      buttonStyle: CustomButtonStyles.none,
                                      decoration: CustomButtonStyles
                                          .gradientBlueToBlueDecoration,
                                      buttonTextStyle: CustomTextStyles
                                          .titleMediumMulishOnError,
                                      onPressed: () {
                                        onTapSignIn();
                                      }),
                                  SizedBox(height: 22.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text(
                                              "msg_don_t_have_an_account".tr,
                                              style: theme
                                                  .textTheme.titleMedium))),
                                  SizedBox(height: 26.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_login".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildSignInRow() {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Obx(() => CustomCheckboxButton(
                  text: "lbl_remember_me".tr,
                  value: controller.rememberMe.value,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    controller.rememberMe.value = value;
                  }))),
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text("msg_lost_your_password".tr,
                  style: theme.textTheme.titleMedium))
        ]));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignIn() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
