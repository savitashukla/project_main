import '../controller/clock_controller.dart';
import '../models/clocklist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ClocklistItemWidget extends StatelessWidget {
  ClocklistItemWidget(
    this.clocklistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ClocklistItemModel clocklistItemModelObj;

  var controller = Get.find<ClockController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  clocklistItemModelObj.cityName!.value,
                  style: CustomTextStyles.bodyMediumOnError,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  clocklistItemModelObj.timeDifference!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          Obx(
            () => Text(
              clocklistItemModelObj.time!.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
