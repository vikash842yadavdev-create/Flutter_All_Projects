import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';
import 'package:e_commerce_app/features/data/models/cart_product_model.dart';
import 'package:e_commerce_app/features/data/models/product_model.dart';
import 'package:get/get.dart';

class CartScreenController extends GetxController {
  final List<CartProductModel> cartList = [];

  double totalPrice = 0.0;

  @override
  void onInit() {
    super.onInit();
    loadCartFromSharedPreferences();
  }

  Future<void> addToCart(ProductModel product) async {
    final int productId = product.id ?? 0;

    final int existingIndex = cartList.indexWhere(
      (item) => item.id == productId,
    );

    if (existingIndex != -1) {
      cartList[existingIndex].quantityCount++;
    } else {
      final CartProductModel cartProduct = CartProductModel(
        id: productId,
        brandName: product.brand ?? 'Unknown Brand',
        itemName: product.title,
        price: product.price ,
        quantityCount: 1,
        description: product.description,
        image: product.thumbnail,
      );

      cartList.add(cartProduct);
    }

    calculateTotalPrice();
    await setCartInLocalStorage();

    update();
  }

  Future<void> increaseQuantity(int index) async {
    if (index < 0 || index >= cartList.length) {
      return;
    }

    cartList[index].quantityCount++;

    calculateTotalPrice();
    await setCartInLocalStorage();

    update();
  }

  Future<void> decreaseQuantity(int index) async {
    if (index < 0 || index >= cartList.length) {
      return;
    }

    if (cartList[index].quantityCount > 1) {
      cartList[index].quantityCount--;

      calculateTotalPrice();
      await setCartInLocalStorage();

      update();
    }
  }

  Future<void> removeFromCart(int index) async {
    if (index < 0 || index >= cartList.length) {
      return;
    }

    cartList.removeAt(index);

    calculateTotalPrice();
    await setCartInLocalStorage();

    update();
  }

  void calculateTotalPrice() {
    totalPrice = cartList.fold(
      0.0,
      (sum, item) => sum + (item.price * item.quantityCount),
    );
  }

  Future<void> loadCartFromSharedPreferences() async {
    final List<CartProductModel> cartItems = await SharedPref.getCart();

    cartList
      ..clear()
      ..addAll(cartItems);

    calculateTotalPrice();

    update();
  }

  Future<void> setCartInLocalStorage() async {
    await SharedPref.setCart(cartList);
  }
}
