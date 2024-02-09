import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavAlarm,
        activeIcon: ImageConstant.imgNavAlarm,
        title: "lbl_alarm".tr,
        type: BottomBarEnum.Alarm,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavClock,
      activeIcon: ImageConstant.imgNavClock,
      title: "lbl_clock".tr,
      type: BottomBarEnum.Clock,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFloatingIcon,
      activeIcon: ImageConstant.imgFloatingIcon,
      title: "lbl_stopwatch".tr,
      type: BottomBarEnum.Stopwatch,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavTimer,
      activeIcon: ImageConstant.imgNavTimer,
      title: "lbl_timer".tr,
      type: BottomBarEnum.Timer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavStopwatch,
      activeIcon: ImageConstant.imgNavStopwatch,
      title: "lbl_stopwatch".tr,
      type: BottomBarEnum.Stopwatch,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: appTheme.blueGray800,
        child: SizedBox(
          height: 24.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: bottomMenuList[index].activeIcon,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              color: appTheme.yellow400,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: CustomTextStyles.bodySmallYellow400
                                    .copyWith(
                                  color: appTheme.yellow400,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: bottomMenuList[index].icon,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              color: theme.colorScheme.onError,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.onError,
                                ),
                              ),
                            ),
                          ],
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Alarm,
  Clock,
  Stopwatch,
  Timer,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
