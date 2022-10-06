import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/src/ui/home/components/categories.dart';
import 'package:test_exercise/src/ui/home/components/circle_progress_and_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColor.bgGradient,
          ),
        ),
        child: Column(
          children: const [
            CashbackBalanseRow(),
            CategoriesListView(),
          ],
        ),
      ),
    );
  }
}
