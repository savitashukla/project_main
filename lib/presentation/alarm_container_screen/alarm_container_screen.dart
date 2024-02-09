import 'controller/alarm_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/presentation/alarm_page/alarm_page.dart';
import 'package:savita_s_application1/presentation/clock_page/clock_page.dart';
import 'package:savita_s_application1/presentation/sign_in_page/sign_in_page.dart';
import 'package:savita_s_application1/presentation/timer_page/timer_page.dart';
import 'package:savita_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:savita_s_application1/widgets/custom_floating_button.dart';

class AlarmContainerScreen extends GetWidget<AlarmContainerController> {
  const AlarmContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.alarmPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildFooter(),
            floatingActionButton: CustomFloatingButton(
                height: 64, width: 64, child: Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildFooter() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.alarmPage:
        return AlarmPage();
      case AppRoutes.clockPage:
        return ClockPage();
      case AppRoutes.timerPage:
        return TimerPage();
      case AppRoutes.signInPage:
        return SignInPage();
      default:
        return AlarmPage();
    }
  }
}
