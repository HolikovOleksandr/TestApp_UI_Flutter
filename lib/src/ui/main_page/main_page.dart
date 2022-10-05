import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/ui/widgets/circle_progress_bsr.dart';
import 'package:test_exercise/src/ui/widgets/little_blue_circle_button.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class MainPage extends BaseStatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColor.bgGradient,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LittleBlueCircleButton(
                subTitle: 'Партнеры',
                icon: AppIcons.shop,
                onTab: () {},
              ),
              CustomPaint(
                foregroundPainter: CircleProgressBar(),
              ),
              LittleBlueCircleButton(
                subTitle: 'Информация',
                icon: AppIcons.info,
                onTab: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
