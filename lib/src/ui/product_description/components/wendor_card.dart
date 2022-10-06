import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/src/ui/widgets/glasmorphism_container.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class WenderCard extends BaseStatelessWidget {
  final String wendorImage;
  final String wendorName;
  final String wendorType;
  final String typeIcon;

  const WenderCard({
    required this.wendorImage,
    required this.wendorName,
    required this.wendorType,
    required this.typeIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return GlassMorhismContainer(
      width: double.infinity,
      height: Get.height * 0.15,
      angelRadius: 25,
      // CONTENT
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              // IMAGE
              child: Image.asset(
                wendorImage,
                scale: 0.35,
              ),
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // WEBDER NAME
                  wendorName,
                  style: AppFonts.size18SemiBold.copyWith(
                    color: AppColor.white,
                  ),
                ),

                // TYPE OF BUISNESS
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(typeIcon),
                    const SizedBox(width: 8),
                    Text(
                      wendorType,
                      softWrap: true,
                      style: AppFonts.size14Regular.copyWith(
                        color: AppColor.subtext,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
