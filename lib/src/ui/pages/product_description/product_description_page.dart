import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/src/core/models/product_model.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/pages/product_description/components/wendor_card.dart';
import 'package:test_exercise/src/ui/pages/product_description/components/recomentation_list_builder.dart';

class ProductDescriptionPage extends BaseStatelessWidget {
  final ProductModel product;

  const ProductDescriptionPage({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColor.bgGradient,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // IMAGE WITH BACK ICON
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    children: [
                      Image.asset(
                        product.image,
                        width: double.infinity,
                        scale: .2,
                      ),
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: AppColor.white,
                        ),
                      ),
                    ],
                  ),
                ),
                // NAME WITH PRICE AND CASHBACK
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: AppFonts.size24Regular.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'цена: ${product.price} ₴'.toLowerCase(),
                            style: AppFonts.size16Regular.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                        ],
                      ),
                      //TODO: cashback item
                    ],
                  ),
                ),
                // WENDER CONTAINER
                WenderCard(
                  wendorName: product.store,
                  typeIcon: product.categoryIcon,
                  wendorImage: product.wendorImage,
                  wendorType: product.wendorCategory,
                ),
                const RecomendationList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}