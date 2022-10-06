import 'package:flutter/material.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/core/models/product_model.dart';

class ProductDescriptionPage extends BaseStatelessWidget {
  final ProductModel product;

  const ProductDescriptionPage({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Container();
  }
}
