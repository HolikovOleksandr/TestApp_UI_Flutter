import 'package:flutter/material.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class CoreApp extends BaseStatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
