import 'package:dio/dio.dart';
import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/core/constants/api_constants.dart';
import 'package:e_commerce_app/features/data/models/product_model.dart';
import 'package:e_commerce_app/features/data/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final ApiServices apiServices = ApiServices();

  String selectedCategory = 'Dresses';

  List<ProductModel> dressesList = [];
  List<ProductModel> watchesList = [];
  List<ProductModel> shirtsList = [];
  List<ProductModel> shoesList = [];

  final List<String> categories = ['Dresses', 'Watches', 'Shirts', 'Shoes'];

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  Future<void> getData() async {
    await Future.wait([getDresses(), getWatches(), getShirts(), getShoes()]);

    update();
  }

  Future<void> getDresses() async {
    try {
      final response = await apiServices.getProductsByCategory(
        ApiConstants.womensDresses,
      );

      final List<dynamic> productList =
          response.data['products'] as List<dynamic>;

      dressesList = productList
          .map(
            (product) =>
                ProductModel.fromJson(Map<String, dynamic>.from(product)),
          )
          .toList();
    } on DioException catch (e) {
      debugPrint('Dresses Dio Error: ${e.message}');
    } catch (e) {
      debugPrint('Dresses Error: $e');
    }
  }

  Future<void> getWatches() async {
    try {
      final response = await apiServices.getProductsByCategory(
        ApiConstants.mensWatches,
      );

      final List<dynamic> productList =
          response.data['products'] as List<dynamic>;

      watchesList = productList
          .map(
            (product) =>
                ProductModel.fromJson(Map<String, dynamic>.from(product)),
          )
          .toList();
    } on DioException catch (e) {
      debugPrint('Watches Dio Error: ${e.message}');
    } catch (e) {
      debugPrint('Watches Error: $e');
    }
  }

  Future<void> getShirts() async {
    try {
      final response = await apiServices.getProductsByCategory(
        ApiConstants.mensShirts,
      );

      final List<dynamic> productList =
          response.data['products'] as List<dynamic>;

      shirtsList = productList
          .map(
            (product) =>
                ProductModel.fromJson(Map<String, dynamic>.from(product)),
          )
          .toList();
    } on DioException catch (e) {
      debugPrint('Shirts Dio Error: ${e.message}');
    } catch (e) {
      debugPrint('Shirts Error: $e');
    }
  }

  Future<void> getShoes() async {
    try {
      final response = await apiServices.getProductsByCategory(
        ApiConstants.mensShoes,
      );

      final List<dynamic> productList =
          response.data['products'] as List<dynamic>;

      shoesList = productList
          .map(
            (product) =>
                ProductModel.fromJson(Map<String, dynamic>.from(product)),
          )
          .toList();
    } on DioException catch (e) {
      debugPrint('Shoes Dio Error: ${e.message}');
    } catch (e) {
      debugPrint('Shoes Error: $e');
    }
  }

  void selectCategory(String category) {
    selectedCategory = category;
    update();
  }

  List<ProductModel> get selectedProducts {
    switch (selectedCategory) {
      case 'Dresses':
        return dressesList;

      case 'Watches':
        return watchesList;

      case 'Shirts':
        return shirtsList;

      case 'Shoes':
        return shoesList;

      default:
        return [];
    }
  }

  void gotoCategories() {
    Get.toNamed(AppRoutes.categoriesScreen);
  }
}
