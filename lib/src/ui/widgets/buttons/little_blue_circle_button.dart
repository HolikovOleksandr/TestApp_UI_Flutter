
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class LittleBlueCircleButton extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.size.width * 0.11,
          height: Get.size.height,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.blue,
            boxShadow: [AppColor.shadow],
          ),
          child: InkWell(
            onTap: onTab,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(icon),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            subTitle,
            style: AppFonts.size10Regular.copyWith(
              color: AppColor.white,
            ),
          ),
        ),
      ],
    );
  }
}
