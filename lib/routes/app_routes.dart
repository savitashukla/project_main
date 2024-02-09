import 'package:savita_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:savita_s_application1/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:savita_s_application1/presentation/alarm_container_screen/alarm_container_screen.dart';
import 'package:savita_s_application1/presentation/alarm_container_screen/binding/alarm_container_binding.dart';
import 'package:savita_s_application1/presentation/stopwatch_screen/stopwatch_screen.dart';
import 'package:savita_s_application1/presentation/stopwatch_screen/binding/stopwatch_binding.dart';
import 'package:savita_s_application1/presentation/subsciptions_screen/subsciptions_screen.dart';
import 'package:savita_s_application1/presentation/subsciptions_screen/binding/subsciptions_binding.dart';
import 'package:savita_s_application1/presentation/email_screen/email_screen.dart';
import 'package:savita_s_application1/presentation/email_screen/binding/email_binding.dart';
import 'package:savita_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:savita_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signInPage = '/sign_in_page';

  static const String signUpScreen = '/sign_up_screen';

  static const String alarmPage = '/alarm_page';

  static const String alarmContainerScreen = '/alarm_container_screen';

  static const String clockPage = '/clock_page';

  static const String timerPage = '/timer_page';

  static const String stopwatchScreen = '/stopwatch_screen';

  static const String subsciptionsScreen = '/subsciptions_screen';

  static const String emailScreen = '/email_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: alarmContainerScreen,
      page: () => AlarmContainerScreen(),
      bindings: [
        AlarmContainerBinding(),
      ],
    ),
    GetPage(
      name: stopwatchScreen,
      page: () => StopwatchScreen(),
      bindings: [
        StopwatchBinding(),
      ],
    ),
    GetPage(
      name: subsciptionsScreen,
      page: () => SubsciptionsScreen(),
      bindings: [
        SubsciptionsBinding(),
      ],
    ),
    GetPage(
      name: emailScreen,
      page: () => EmailScreen(),
      bindings: [
        EmailBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    )
  ];
}
