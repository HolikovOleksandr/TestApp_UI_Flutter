import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class CategoryItem extends BaseStatelessWidget {
  final Color color;
  final String icon;
  final String lable;

  const CategoryItem({
    Key? key,
    required this.color,
    required this.icon,
    required this.lable,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    //TODO: shadow shine

                    // boxShadow: [
                    //   BoxShadow(
                    //     color: color,
                    //     blurRadius: 2,
                    //     spreadRadius: 2,
                    //   ),
                    // ],
                    color: Colors.transparent,
                    border: Border.all(
                      color: color,
                      width: 3,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SvgPicture.asset(icon),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 65,
              child: Text(
                //TODO: Wrap text
                lable,
                maxLines: 2,
                softWrap: true,
                style: AppFonts.size12Regular.copyWith(
                  color: AppColor.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
