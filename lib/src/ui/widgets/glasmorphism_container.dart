import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:test_exercise/src/core/base_widgets/base_statefull_widget.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class GlassMorhismContainer extends BaseStatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const GlassMorhismContainer({
    required this.child,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: AppColor.white,
      child: GlassMorphism(
        child: child,
      ),
    );
  }
}

// GLASSMORHISM EFFECT
class GlassMorphism extends BaseStatelessWidget {
  final Widget child;

  const GlassMorphism({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.white.withOpacity(0.2),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              width: 1.5,
              color: AppColor.white.withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
