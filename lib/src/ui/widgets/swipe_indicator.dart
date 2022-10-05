import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/src/core/base_widgets/base_statefull_widget.dart';

class SwipeIndicator extends BaseStatefulWidget {
  final bool isActive;

  const SwipeIndicator({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  State<SwipeIndicator> createState() => _SwipeIndicatorState();
}

class _SwipeIndicatorState extends State<SwipeIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: widget.isActive ? AppColor.primary : Colors.transparent,
        border: Border.all(
          color: AppColor.blue2,
          width: 2,
        ),
      ),
    );
  }
}
