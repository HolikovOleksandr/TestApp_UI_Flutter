import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:test_exercise/src/core/models/product_model.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  var isDataLoadingComplited = false.obs;

  @override
  void onInit() {
    super.onInit();
    
    fetchData();
  }

  Future<void> fetchData() async {
    var productJson = await rootBundle.loadString("assets/json/products.json");

    var decodeData = jsonDecode(productJson);

    products.value =
        List.from(decodeData).map((e) => ProductModel.fromMap(e)).toList();

    isDataLoadingComplited.value = true;
  }

  void destroy() {
    products.value = [];
  }
}
