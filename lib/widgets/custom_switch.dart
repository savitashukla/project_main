import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savita_s_application1/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: appTheme.blueGray700,
        thumbColor: (value ?? false)
            ? theme.colorScheme.onError
            : theme.colorScheme.onError,
        activeColor: appTheme.yellow400,
        onChanged: (value) {
          onChange(value);
        },
      );
}
