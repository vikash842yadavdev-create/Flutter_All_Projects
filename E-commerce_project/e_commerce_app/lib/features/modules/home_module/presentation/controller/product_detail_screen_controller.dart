import 'package:e_commerce_app/features/data/models/product_model.dart';
import 'package:e_commerce_app/features/modules/cart_module/presentation/controller/cart_screen_controller.dart';
import 'package:e_commerce_app/features/modules/common_widgets/get_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreenController extends GetxController {
  final CartScreenController cartController = Get.find<CartScreenController>();

  late ProductModel product;

  int quantity = 1;
  String selectedSize = 'L';
  int selectedColor = 0;

  final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];

  int currentImageIndex = 0;

  final PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();

    product = Get.arguments as ProductModel;
  }

  Future<void> addProductToCart() async {
    for (int i = 0; i < quantity; i++) {
      await cartController.addToCart(product);
    }
    CustomGetSnackBar.show(
      title: 'Added to Cart',
      message: '${product.title} added to your cart',
      position: 'top',
    );
  }

  void increaseQuantity() {
    if (product.stock != null && quantity < product.stock!) {
      quantity++;
      update();
    }
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
      update();
    }
  }

  void selectSize(String size) {
    selectedSize = size;
    update();
  }

  void changeImage(int index) {
    currentImageIndex = index;
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
