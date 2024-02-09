import 'controller/subsciptions_controller.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_elevated_button.dart';
import 'package:savita_s_application1/widgets/custom_floating_button.dart';

class SubsciptionsScreen extends GetWidget<SubsciptionsController> {
  const SubsciptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 386.h,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 64.h),
                              child: Text("msg_choose_your_plan".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 12.v),
                      Container(
                          width: 277.h,
                          margin: EdgeInsets.only(left: 36.h, right: 23.h),
                          child: Text("msg_subscription_allows".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray100)),
                      SizedBox(height: 47.v),
                      CustomElevatedButton(
                          text: "lbl_1_week".tr,
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumSecondaryContainer),
                      SizedBox(height: 13.v),
                      Text("msg_you_are_using_4".tr,
                          style: CustomTextStyles.bodyLargeYellow400),
                      SizedBox(height: 56.v),
                      Text("lbl_pay_via_paypal".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 14.v),
                      CustomElevatedButton(
                          text: "lbl_1_month".tr,
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumSecondaryContainer),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                          width: 153.h,
                          text: "lbl_pay_now".tr,
                          buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                          buttonTextStyle: CustomTextStyles.titleLargePrimary,
                          onPressed: () {
                            onTapPAYNOW();
                          }),
                      SizedBox(height: 17.v)
                    ])),
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
            text: "lbl_subscriptions".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildFooter() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the emailScreen when the action is triggered.
  onTapPAYNOW() {
    Get.toNamed(
      AppRoutes.emailScreen,
    );
  }
}
