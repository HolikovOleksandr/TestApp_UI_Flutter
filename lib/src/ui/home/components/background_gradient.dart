import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class BackgroundGradient extends BaseStatelessWidget {
  const BackgroundGradient({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColor.bgGradient,
        ),
      ),
    );
  }
}
