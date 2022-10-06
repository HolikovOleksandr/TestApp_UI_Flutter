import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/src/ui/home/components/bank_card.dart';
import 'package:test_exercise/src/ui/home/components/bottom_sheet.dart';
import 'package:test_exercise/src/ui/home/components/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColor.bgGradient,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: const [
              BankCardWidget(),
              // CashbackBalanseRow(),
              CategoriesListView(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomSheet: MyBottomSheet(),
    );
  }
}
