import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:test_exercise/src/ui/widgets/product_card.dart';
import 'package:test_exercise/src/core/controllers/product_controller.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';
import 'package:test_exercise/src/ui/product_description/product_description_page.dart';

class MyBottomSheet extends BaseStatelessWidget {
  final ProductController productController = Get.put(ProductController());
  MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return SolidBottomSheet(
      headerBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(AppImages.fire),
              const SizedBox(width: 8),
              Text(
                'Горячие предложения',
                style: AppFonts.size18SemiBold.copyWith(
                  color: AppColor.textBlack,
                ),
              )
            ],
          ),
        ),
      ),
      body: Obx(
        () => productController.isDataLoadingComplited.value == true
            ? ListView.builder(
                itemCount: productController.products.length,
                itemBuilder: (context, index) {
                  var currentProduct = productController.products[index];
                  return ProductCardWidget(
                    currentProduct: currentProduct,
                    onTap: () => Get.to(
                      () => ProductDescriptionPage(
                        product: currentProduct,
                      ),
                    ),
                  );
                },
              )
            : const CircularProgressIndicator(
                color: AppColor.primary,
              ),
      ),

      // child: ListView.builder(itemBuilder: itemBuilder),
    );
  }
}
