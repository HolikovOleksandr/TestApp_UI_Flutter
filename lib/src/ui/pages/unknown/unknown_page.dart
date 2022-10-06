import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class UnknownPage extends BaseStatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: AppColor.bgGradient,
              ),
            ),
          ),
          Positioned(
            top: Get.height / 5,
            left: Get.width / 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(AppImages.notFound, scale: 1.2),
                const SizedBox(height: 16),
                Text(
                  'Мы не нашли такую страницу'.toUpperCase(),
                  style: AppFonts.size14Bold.copyWith(
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: Get.height / 14,
            width: Get.width / 6,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColor.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
