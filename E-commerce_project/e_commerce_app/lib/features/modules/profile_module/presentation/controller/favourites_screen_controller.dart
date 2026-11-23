import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';
import 'package:e_commerce_app/features/data/models/product_model.dart';
import 'package:get/get.dart';

class FavouritesScreenController extends GetxController {
  final List<ProductModel> favouriteProducts = [];

  @override
  void onInit() {
    super.onInit();
    loadFavourites();
  }

  // Load saved favourites
  Future<void> loadFavourites() async {
    final savedFavourites = await SharedPref.getFavourite();

    favouriteProducts
      ..clear()
      ..addAll(savedFavourites);

    update();
  }

  // Check favourite
  bool isFavourite(ProductModel product) {
    return favouriteProducts.any((item) => item.id == product.id);
  }

  // Add / Remove favourite
  Future<void> toggleFavourite(ProductModel product) async {
    if (isFavourite(product)) {
      favouriteProducts.removeWhere((item) => item.id == product.id);
    } else {
      favouriteProducts.add(product);
    }

    // Save updated list
    await SharedPref.setFavourite(favouriteProducts);

    update();
  }

  // Remove favourite
  Future<void> removeFavourite(ProductModel product) async {
    favouriteProducts.removeWhere((item) => item.id == product.id);

    await SharedPref.setFavourite(favouriteProducts);

    update();
  }
}
