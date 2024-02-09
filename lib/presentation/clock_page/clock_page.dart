import '../clock_page/widgets/clocklist_item_widget.dart';
import 'controller/clock_controller.dart';
import 'models/clock_model.dart';
import 'models/clocklist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:savita_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:savita_s_application1/widgets/app_bar/custom_app_bar.dart';

class ClockPage extends StatelessWidget {
  ClockPage({Key? key})
      : super(
          key: key,
        );

  ClockController controller = Get.put(ClockController(ClockModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: 386.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 26.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_9_30".tr,
                        style: theme.textTheme.displayLarge,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_pm".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_tue_nov_30".tr,
                  style: CustomTextStyles.bodyMediumOnError,
                ),
              ),
              SizedBox(height: 34.v),
              _buildClockList(),
              SizedBox(height: 34.v),
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
        text: "lbl_clock".tr,
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
  Widget _buildClockList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 17.v,
              );
            },
            itemCount:
                controller.clockModelObj.value.clocklistItemList.value.length,
            itemBuilder: (context, index) {
              ClocklistItemModel model =
                  controller.clockModelObj.value.clocklistItemList.value[index];
              return ClocklistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
