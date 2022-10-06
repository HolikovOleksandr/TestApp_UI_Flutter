// ROW WITH CIRCLE PROGRESS BAR AND LITTLE BLUE BUTONS
import 'package:flutter/material.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/widgets/circle_progress_bar.dart';
import 'package:test_exercise/src/ui/widgets/little_blue_circle_button.dart';

class CashbackBalanseRow extends BaseStatelessWidget {
  const CashbackBalanseRow({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 90,
            child: LittleBlueCircleButton(
              subTitle: 'Партнеры',
              icon: AppIcons.shop,
              onTab: () {},
            ),
          ),
          const CircularProgressBar(),
          SizedBox(
            width: 90,
            child: LittleBlueCircleButton(
              subTitle: 'Информация',
              icon: AppIcons.info,
              onTab: () {},
            ),
          ),
        ],
      ),
    );
  }
}
