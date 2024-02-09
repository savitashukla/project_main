import 'controller/email_controller.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/core/utils/validation_functions.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_elevated_button.dart';
import 'package:savita_s_application1/widgets/custom_floating_button.dart';
import 'package:savita_s_application1/widgets/custom_text_form_field.dart';
import 'package:savita_s_application1/presentation/payment_dialog/payment_dialog.dart';
import 'package:savita_s_application1/presentation/payment_dialog/controller/payment_controller.dart';

// ignore_for_file: must_be_immutable
class EmailScreen extends GetWidget<EmailController> {
  EmailScreen({Key? key}) : super(key: key);

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
                            padding: EdgeInsets.only(
                                left: 22.h, top: 71.v, right: 22.h),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 22.h),
                                      child: Text("msg_enter_your_paypal".tr,
                                          style:
                                              theme.textTheme.headlineSmall))),
                              SizedBox(height: 36.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: CustomTextFormField(
                                      controller: controller.emailController,
                                      hintText: "lbl_paypal_email".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_email"
                                              .tr;
                                        }
                                        return null;
                                      })),
                              SizedBox(height: 43.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomElevatedButton(
                                        height: 39.v,
                                        width: 101.h,
                                        text: "lbl_cancel".tr,
                                        buttonStyle: CustomButtonStyles
                                            .outlinePrimaryTL101,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumOnError),
                                    CustomElevatedButton(
                                        height: 39.v,
                                        width: 101.h,
                                        text: "lbl_pay_now".tr,
                                        margin: EdgeInsets.only(left: 25.h),
                                        buttonStyle: CustomButtonStyles
                                            .outlinePrimaryTL10,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumPrimary_1,
                                        onPressed: () {
                                          onTapPAYNOW();
                                        })
                                  ]),
                              SizedBox(height: 43.v)
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
            text: "lbl_email2".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildFooter() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {});
  }

  /// Displays a dialog with the [PaymentDialog] content.
  onTapPAYNOW() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: PaymentDialog(
        Get.put(
          PaymentController(),
        ),
      ),
    ));
  }
}
