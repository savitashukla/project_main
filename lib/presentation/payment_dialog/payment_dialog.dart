import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PaymentDialog extends StatelessWidget {
  PaymentDialog(this.controller, {Key? key}) : super(key: key);

  PaymentController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 323.h,
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 44.v),
        decoration: AppDecoration.fillOnError
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 4.v),
                  decoration: AppDecoration.fillGreen
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder32),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgDownloadRemovebgPreview,
                      height: 53.adaptSize,
                      width: 53.adaptSize,
                      alignment: Alignment.topCenter)),
              SizedBox(height: 16.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_you_sent_money".tr,
                        style: CustomTextStyles.titleMediumff747574),
                    TextSpan(
                        text: "lbl_successfully".tr,
                        style: CustomTextStyles.titleMediumff63d991),
                    TextSpan(
                        text: "lbl_to".tr,
                        style: CustomTextStyles.titleMediumff747574)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 32.v),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 38.h),
                  padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.v),
                  decoration: AppDecoration.outlinePrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder32),
                  child: Row(mainAxisSize: MainAxisSize.max, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse2,
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        radius: BorderRadius.circular(27.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 10.h, top: 7.v, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_abc".tr,
                                      style:
                                          CustomTextStyles.titleMediumPrimary)),
                              SizedBox(height: 2.v),
                              Text("lbl_60_00".tr,
                                  style: CustomTextStyles.titleMediumGreen300)
                            ]))
                  ])),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 29.h, right: 19.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_transaction_id".tr,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_123456789".tr,
                                style: CustomTextStyles.titleMediumGreen300))
                      ])),
              SizedBox(height: 3.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 49.h, right: 17.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text("lbl_executed_on".tr,
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainer)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 2.v),
                                child: Text("lbl_nov_5_2023".tr,
                                    style: CustomTextStyles.titleMediumPrimary))
                          ]))),
              SizedBox(height: 46.v),
              CustomElevatedButton(
                  height: 48.v,
                  text: "lbl_done".tr,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL24,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
                  onPressed: () {
                    onTapDONE();
                  }),
              SizedBox(height: 4.v)
            ]));
  }

  /// Navigates to the alarmContainerScreen when the action is triggered.
  onTapDONE() {
    Get.toNamed(
      AppRoutes.alarmContainerScreen,
    );
  }
}
