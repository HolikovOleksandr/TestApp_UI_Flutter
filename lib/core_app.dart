import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_exercise/router/route_pathes.dart';
import 'package:test_exercise/router/routes.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/unknown/unknown_page.dart';

class CoreApp extends BaseStatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return GetMaterialApp(
      home: const UnknownPage(),
      debugShowCheckedModeBanner: false,
      unknownRoute: unknownRoute,
      initialRoute: AppRouter.mainPage,
    );
  }
}
