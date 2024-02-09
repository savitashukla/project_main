import 'controller/stopwatch_controller.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_elevated_button.dart';

class StopwatchScreen extends GetWidget<StopwatchController> {
  const StopwatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 386.h,
                padding:
                    EdgeInsets.symmetric(horizontal: 49.h, vertical: 142.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 81.v),
                  Text("msg_00_00_00".tr,
                      style: CustomTextStyles.displayMediumMedium),
                  Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                        child: CustomElevatedButton(
                            height: 52.v,
                            text: "lbl_start".tr,
                            margin: EdgeInsets.only(right: 20.h),
                            onPressed: () {
                              onTapStart();
                            })),
                    Expanded(
                        child: CustomElevatedButton(
                            height: 52.v,
                            text: "lbl_lap".tr,
                            margin: EdgeInsets.only(left: 20.h),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnError18))
                  ])
                ])),
            bottomNavigationBar: _buildBottomBar(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_stopwatch".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the subsciptionsScreen when the action is triggered.
  onTapStart() {
    Get.toNamed(
      AppRoutes.subsciptionsScreen,
    );
  }
}
