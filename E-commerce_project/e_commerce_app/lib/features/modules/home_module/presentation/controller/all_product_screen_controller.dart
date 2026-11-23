import 'package:dio/dio.dart';
import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/data/models/product_model.dart';
import 'package:e_commerce_app/features/data/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllProductScreenController extends GetxController {
  final ApiServices apiServices = ApiServices();

  List<ProductModel> allProductList = [];

  String categoryName = '';
  String categoryEndPoint = '';

  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    getAllProductsByCategory();
  }

  Future<bool> getAllProductsByCategory() async {
    try {
      categoryEndPoint = Get.arguments[0] as String;
      categoryName = Get.arguments[1] as String;

      final response = await apiServices.getProductsByCategory(
        categoryEndPoint,
      );

      final List<dynamic> productList =
          response.data['products'] as List<dynamic>;

      allProductList = productList
          .map(
            (product) =>
                ProductModel.fromJson(Map<String, dynamic>.from(product)),
          )
          .toList();

      isLoading = true;
      update();
      return true;
    } on DioException catch (e) {
      debugPrint('Dio Error: ${e.message}');
      return false;
    } catch (e) {
      debugPrint('Error: $e');
      return false;
    } finally {
      isLoading = false;
      update();
    }
  }

  void gotoProductDetailsScreen(ProductModel product) {
    Get.toNamed(AppRoutes.productDetailsScreen, arguments: product);
  }
}
