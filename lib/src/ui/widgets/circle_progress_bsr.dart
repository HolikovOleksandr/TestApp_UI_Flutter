import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';

// class CircleProgressBar extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint circle = Paint()
//       ..strokeWidth = 18
//       ..color = AppColor.blue
//       ..style = PaintingStyle.stroke;

//     Offset center = Offset(size.width / 2, size.height / 2);
//     double radius = 80;
//     canvas.drawCircle(center, radius, circle);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     throw UnimplementedError();
//   }
// }

class CircularProgressBar extends StatelessWidget {
  const CircularProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      circularStrokeCap: CircularStrokeCap.round,
      radius: 80,
      backgroundColor: AppColor.blue,
      progressColor: AppColor.purple,
      lineWidth: 18,
      percent: 0.35,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '35',
                style: AppFonts.size36Bold.copyWith(
                  color: AppColor.white,
                ),
              ),
              Text(
                '\$',
                style: AppFonts.size30Bold.copyWith(
                  color: AppColor.white,
                ),
              ),
            ],
          ),
          Text(
            'Баланс кэшбэка',
            style: AppFonts.size12Regular.copyWith(
              color: AppColor.white,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
