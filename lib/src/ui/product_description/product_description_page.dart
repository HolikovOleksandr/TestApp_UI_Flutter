import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/src/core/models/product_model.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class ProductDescriptionPage extends BaseStatelessWidget {
  // final ProductModel product;

  const ProductDescriptionPage({
    // required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
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
          children: const [],
        ),
      ),
    );
  }
}
