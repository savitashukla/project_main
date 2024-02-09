import 'controller/timer_controller.dart';
import 'models/timer_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_elevated_button.dart';

class TimerPage extends StatelessWidget {
  TimerPage({Key? key})
      : super(
          key: key,
        );

  TimerController controller = Get.put(TimerController(TimerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: 386.h,
          padding: EdgeInsets.symmetric(
            horizontal: 49.h,
            vertical: 96.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTimerSection(),
              Spacer(),
              SizedBox(height: 13.v),
              CustomElevatedButton(
                height: 52.v,
                width: 124.h,
                text: "lbl_start".tr,
              ),
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
        text: "lbl_timer".tr,
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
  Widget _buildTimerSection() {
    return Obx(
      () => SizedBox(
        height: 256.v,
        width: 285.h,
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.single,
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime(DateTime.now().year + 5),
            firstDayOfWeek: 0,
          ),
          value: controller.selectedDatesFromCalendar1.value,
          onValueChanged: (dates) {
            controller.selectedDatesFromCalendar1.value = dates;
          },
        ),
      ),
    );
  }
}
