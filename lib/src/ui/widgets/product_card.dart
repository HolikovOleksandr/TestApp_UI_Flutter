import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/core/models/product_model.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class ProductCardWidget extends BaseStatelessWidget {
  final ProductModel currentProduct;
  // final Callback onTab;

  const ProductCardWidget({required this.currentProduct, Key? key})
      : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [AppColor.productCardShadow],
              color: AppColor.white,
              borderRadius: BorderRadius.circular(16),
            ),

            // CONTENT
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                // PRODUCT IMAGE
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(currentProduct.image),
                    ),
                    const SizedBox(width: 16),

                    // PRODUCT INFORMATION
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          // NAME
                          child: Text(
                            currentProduct.name,
                            style: AppFonts.size16Regular.copyWith(
                              color: AppColor.textBlack,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Цена: ${currentProduct.price} \$',
                            style: AppFonts.size12SemiBold.copyWith(
                              color: AppColor.textBlack,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                AppIcons.location,
                                color: AppColor.subtext,
                              ),

                              // VENDER NAME
                              Text(
                                currentProduct.store,
                                style: AppFonts.size12Regular.copyWith(
                                  color: AppColor.subtext,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // CASHBACK MARKER
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: const BoxDecoration(
                      color: AppColor.yellow,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '${currentProduct.cashback} %',
                          style: AppFonts.size14Bold.copyWith(
                            color: AppColor.white,
                          ),
                        ),
                        Text(
                          "кэшбэк",
                          style: AppFonts.size10Regular.copyWith(
                            color: AppColor.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
