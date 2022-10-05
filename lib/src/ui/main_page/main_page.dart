import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/widgets/little_blue_circle_button.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
