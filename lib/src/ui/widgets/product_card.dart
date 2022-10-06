import 'package:flutter/material.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class ProductCardWidget extends BaseStatelessWidget {
  // final ProductModel currentProduct;
  // final Callback onTab;

  const ProductCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
