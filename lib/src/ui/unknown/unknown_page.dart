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
      backgroundColor: AppColor.blue,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            Image.asset(AppImages.notFound, scale: 1.2),
            const SizedBox(height: 16),
            Text(
              'Пардон, мы не нашли такую страницу('.toUpperCase(),
              style: AppFonts.size14Bold.copyWith(
                color: AppColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
