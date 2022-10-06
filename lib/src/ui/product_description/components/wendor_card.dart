import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/ui/widgets/glasmorphism_container.dart';

class WenderCard extends StatelessWidget {
  const WenderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                'assets/images/wendor_image.png',
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
                  "Арома Кава",
                  style: AppFonts.size18SemiBold.copyWith(
                    color: AppColor.white,
                  ),
                ),

                // TYPE OF BUISNESS
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.cup),
                    const SizedBox(width: 8),
                    Text(
                      'Кафе и Рестораны',
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
