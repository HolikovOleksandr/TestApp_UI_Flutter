import 'package:flutter/material.dart';
import 'package:test_exercise/src/ui/home_page/components/categories.dart';
import 'package:test_exercise/src/ui/home_page/components/background_gradient.dart';
import 'package:test_exercise/src/ui/home_page/components/circle_progress_and_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundGradient(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              CashbackBalanseRow(),
              CategoriesListView(),
            ],
          ),
        ],
      ),
    );
  }
}
