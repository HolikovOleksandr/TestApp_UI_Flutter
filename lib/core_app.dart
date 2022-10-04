import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/main_page/main_page.dart';

class CoreApp extends BaseStatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return const GetMaterialApp(
      home: MainPage(),
    );
  }
}
