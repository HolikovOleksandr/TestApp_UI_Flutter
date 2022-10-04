import 'package:flutter/material.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class MainPage extends BaseStatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
