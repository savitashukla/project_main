import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/core/utils/validation_functions.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_checkbox_button.dart';
import 'package:savita_s_application1/widgets/custom_elevated_button.dart';
import 'package:savita_s_application1/widgets/custom_floating_button.dart';
import 'package:savita_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: 386.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.h, vertical: 39.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  _buildName(),
                                  SizedBox(height: 30.v),
                                  _buildEmail(),
                                  SizedBox(height: 14.v),
                                  _buildPassword(),
                                  SizedBox(height: 19.v),
                                  _buildIAgreeWithTheTermsOfServiceAnd(),
                                  SizedBox(height: 35.v),
                                  _buildSignUp(),
                                  SizedBox(height: 26.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Text("msg_have_an_account".tr,
                                          style: theme.textTheme.titleMedium))
                                ]))))),
            bottomNavigationBar: _buildFooter(),
            floatingActionButton: CustomFloatingButton(
                height: 64, width: 64, child: Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_sign_up".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 17.v, 20.h, 17.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEyeoff,
                    height: 16.adaptSize,
                    width: 16.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v)));
  }

  /// Section Widget
  Widget _buildIAgreeWithTheTermsOfServiceAnd() {
    return Padding(
        padding: EdgeInsets.only(right: 37.h),
        child: Obx(() => CustomCheckboxButton(
            text: "msg_i_agree_with_the".tr,
            value: controller.iAgreeWithTheTermsOfServiceAnd.value,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            textStyle: CustomTextStyles.bodySmall12,
            onChange: (value) {
              controller.iAgreeWithTheTermsOfServiceAnd.value = value;
            })));
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueToBlueDecoration,
        buttonTextStyle: CustomTextStyles.titleMediumPrimarySemiBold,
        onPressed: () {
          onTapSignUp();
        });
  }

  /// Section Widget
  Widget _buildFooter() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the alarmContainerScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.alarmContainerScreen,
    );
  }
}
