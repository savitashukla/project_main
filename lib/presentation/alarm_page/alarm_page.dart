import 'controller/alarm_controller.dart';
import 'models/alarm_model.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_switch.dart';

class AlarmPage extends StatelessWidget {
  AlarmPage({Key? key})
      : super(
          key: key,
        );

  AlarmController controller = Get.put(AlarmController(AlarmModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: 386.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 7.v,
          ),
          child: Column(
            children: [
              _buildWorkSection(),
              SizedBox(height: 17.v),
              _buildWakeUpSection(),
              SizedBox(height: 17.v),
              _buildMeditateSection(),
              SizedBox(height: 45.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_alarm".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWorkSection() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_work".tr,
                        style: CustomTextStyles.bodyMediumOnError,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_8_30".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_am".tr,
                          style: CustomTextStyles.titleMediumffffffffBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 14.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 14.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 14.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 12.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 12.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_s".tr,
                          style: CustomTextStyles.bodyMediumffcfcfcf,
                        ),
                        TextSpan(
                          text: "msg_m_t_w_t_f_s".tr,
                          style: CustomTextStyles.bodyMediumfff0f757,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 19.v),
                  Obx(
                    () => CustomSwitch(
                      alignment: Alignment.centerRight,
                      value: controller.isSelectedSwitch.value,
                      onChange: (value) {
                        controller.isSelectedSwitch.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_exercise".tr,
                        style: CustomTextStyles.bodyMediumOnError,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_6_30".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_am".tr,
                          style: CustomTextStyles.titleMediumffffffffBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 12.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.yellow400,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(left: 14.h),
                        decoration: BoxDecoration(
                          color: appTheme.yellow400,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(left: 14.h),
                        decoration: BoxDecoration(
                          color: appTheme.yellow400,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(left: 14.h),
                        decoration: BoxDecoration(
                          color: appTheme.yellow400,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(left: 12.h),
                        decoration: BoxDecoration(
                          color: appTheme.yellow400,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_s".tr,
                          style: CustomTextStyles.bodyMediumffcfcfcf,
                        ),
                        TextSpan(
                          text: "msg_m_t_w_t_f_s".tr,
                          style: CustomTextStyles.bodyMediumfff0f757,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 19.v),
                  Obx(
                    () => CustomSwitch(
                      alignment: Alignment.centerRight,
                      value: controller.isSelectedSwitch1.value,
                      onChange: (value) {
                        controller.isSelectedSwitch1.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWakeUpSection() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "lbl_wake_up".tr,
                        style: CustomTextStyles.bodyMediumOnError,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_5_30".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        TextSpan(
                          text: "lbl_am2".tr,
                          style: CustomTextStyles.titleMediumffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 14.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 14.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 14.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 12.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(left: 12.h),
                            decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_s".tr,
                          style: CustomTextStyles.bodyMediumffcfcfcf,
                        ),
                        TextSpan(
                          text: "msg_m_t_w_t_f_s".tr,
                          style: CustomTextStyles.bodyMediumfff0f757,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 19.v),
                  Obx(
                    () => CustomSwitch(
                      alignment: Alignment.centerRight,
                      value: controller.isSelectedSwitch2.value,
                      onChange: (value) {
                        controller.isSelectedSwitch2.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.all(19.h),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_sleep".tr,
                      style: CustomTextStyles.bodyMediumOnError,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_10_00".tr,
                              style: theme.textTheme.displaySmall,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_pm".tr,
                              style: CustomTextStyles.titleMediumffffffff,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_everyday".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Obx(
                    () => CustomSwitch(
                      alignment: Alignment.centerRight,
                      value: controller.isSelectedSwitch3.value,
                      onChange: (value) {
                        controller.isSelectedSwitch3.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMeditateSection() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_wake_up".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_2_45_pm".tr,
                      style: CustomTextStyles.bodyLargeBluegray100,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_everyday".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Obx(
                    () => CustomSwitch(
                      alignment: Alignment.centerRight,
                      value: controller.isSelectedSwitch4.value,
                      onChange: (value) {
                        controller.isSelectedSwitch4.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_meditate".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_6_00_am".tr,
                      style: CustomTextStyles.bodyLargeBluegray100,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_everyday".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Obx(
                    () => CustomSwitch(
                      alignment: Alignment.centerRight,
                      value: controller.isSelectedSwitch5.value,
                      onChange: (value) {
                        controller.isSelectedSwitch5.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
