import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_exercise/src/ui/pages/home/components/bank_card.dart';
import 'package:test_exercise/src/core/base_widgets/base_statefull_widget.dart';
import 'package:test_exercise/src/ui/pages/home/components/circle_progress_and_buttons.dart';

class SwipeToBankCard extends BaseStatefulWidget {
  const SwipeToBankCard({Key? key}) : super(key: key);

  @override
  State<SwipeToBankCard> createState() => _SwipeToBankCardState();
}

class _SwipeToBankCardState extends State<SwipeToBankCard> {
  final pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.3,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return widgetList[index];
        },
        onPageChanged: (index) => setState(() => pageIndex = index),
      ),
    );
  }
}

List<Widget> widgetList = const [
  CashbackBalanseRow(),
  BankCardWidget(),
];
