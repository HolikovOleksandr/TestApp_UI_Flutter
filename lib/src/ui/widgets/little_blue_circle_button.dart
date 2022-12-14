import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class LittleBlueCircleButton extends BaseStatelessWidget {
  final String icon;
  final Callback onTab;
  final String subTitle;

  const LittleBlueCircleButton({
    required this.subTitle,
    required this.onTab,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: Get.size.width * 0.11,
          height: Get.size.width * 0.2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.blue,
            boxShadow: [AppColor.littleBlueButtonShadow],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: onTab,
              child: SvgPicture.asset(icon),
            ),
          ),
        ),
        Text(
          subTitle,
          style: AppFonts.size10Regular.copyWith(
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
