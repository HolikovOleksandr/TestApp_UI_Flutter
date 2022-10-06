import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_exercise/router/routes.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/product_description/product_description_page.dart';

class CoreApp extends BaseStatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      unknownRoute: unknownRoute,
      // initialRoute: rootRoute,
      home: ProductDescriptionPage(),
      navigatorKey: Get.key,
      getPages: routes,
    );
  }
}
