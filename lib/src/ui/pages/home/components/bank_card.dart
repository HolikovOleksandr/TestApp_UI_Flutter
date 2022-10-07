import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/widgets/glasmorphism_container.dart';

class BankCardWidget extends BaseStatelessWidget {
  const BankCardWidget({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    // return GlassMorhismContainer();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GlassMorhismContainer(
        angelRadius: 20,
        height: 164,
        width: 320,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Credit Card',
                    style: AppFonts.size16Bold.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child: const Icon(
                      Icons.wifi,
                      color: AppColor.white,
                      size: 35,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "1234  5678  9101  1123",
                    style: AppFonts.size24Bold.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  Image.asset(
                    AppImages.cheep,
                    width: 60,
                    scale: 10,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'card holder'.toLowerCase(),
                        style: AppFonts.size14Regular.copyWith(
                          color: AppColor.white.withOpacity(.7),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Holikov Oleksandr'.toUpperCase(),
                        style: AppFonts.size16Bold.copyWith(
                          color: AppColor.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    AppImages.visa,
                    scale: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
