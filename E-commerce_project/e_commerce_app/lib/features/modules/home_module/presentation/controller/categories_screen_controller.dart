import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/core/constants/api_constants.dart';
import 'package:get/get.dart';

class CategoriesScreenController extends GetxController {
      final List<Map<String, dynamic>> categories = [
    {
      'title': 'Beauty',
      'products': 'Beauty Products',
      'image': 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.beauty,
    },
    {
      'title': 'Fragrances',
      'products': 'Fragrance Products',
      'image': 'https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.fragrances,
    },
    {
      'title': 'Furniture',
      'products': 'Furniture Products',
      'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.furniture,
    },
    {
      'title': 'Groceries',
      'products': 'Grocery Products',
      'image': 'https://images.unsplash.com/photo-1542838132-92c53300491e?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.groceries,
    },
    {
      'title': 'Home Decoration',
      'products': 'Home Decoration',
      'image': 'https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.homeDecoration,
    },
    {
      'title': 'Kitchen Accessories',
      'products': 'Kitchen Products',
      'image': 'https://images.unsplash.com/photo-1556911220-bff31c812dba?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.kitchenAccessories,
    },
    {
      'title': 'Laptops',
      'products': 'Laptop Products',
      'image': 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.laptops,
    },
    {
      'title': "Men's Shirts",
      'products': 'Men Shirts',
      'image': 'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.mensShirts,
    },
    {
      'title': "Men's Shoes",
      'products': 'Men Shoes',
      'image': 'https://images.unsplash.com/photo-1495555961986-6d4c1ecb7be3?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.mensShoes,
    },
    {
      'title': "Men's Watches",
      'products': 'Men Watches',
      'image': 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.mensWatches,
    },
    {
      'title': 'Mobile Accessories',
      'products': 'Mobile Accessories',
      'image': 'https://images.unsplash.com/photo-1556656793-08538906a9f8?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.mobileAccessories,
    },
    {
      'title': 'Motorcycle',
      'products': 'Motorcycle Products',
      'image': 'https://images.unsplash.com/photo-1558981806-ec527fa84c39?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.motorcycle,
    },
    {
      'title': 'Skin Care',
      'products': 'Skin Care Products',
      'image': 'https://images.unsplash.com/photo-1556229010-6c3f2c9ca5f8?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.skinCare,
    },
    {
      'title': 'Smartphones',
      'products': 'Smartphone Products',
      'image': 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.smartphones,
    },
    {
      'title': 'Sports Accessories',
      'products': 'Sports Products',
      'image': 'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.sportsAccessories,
    },
    {
      'title': 'Sunglasses',
      'products': 'Sunglasses Products',
      'image': 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.sunglasses,
    },
    {
      'title': 'Tablets',
      'products': 'Tablet Products',
      'image': 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.tablets,
    },
    {
      'title': 'Tops',
      'products': 'Top Products',
      'image': 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.tops,
    },
    {
      'title': 'Vehicle',
      'products': 'Vehicle Products',
      'image': 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.vehicle,
    },
    {
      'title': "Women's Bags",
      'products': 'Women Bags',
      'image': 'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.womensBags,
    },
    {
      'title': "Women's Dresses",
      'products': 'Women Dresses',
      'image': 'https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.womensDresses,
    },
    {
      'title': "Women's Jewellery",
      'products': 'Women Jewellery',
      'image': 'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.womensJewellery,
    },
    {
      'title': "Women's Shoes",
      'products': 'Women Shoes',
      'image': 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=1000&q=80',
      'textLeft': true,
      'categorie': ApiConstants.womensShoes,
    },
    {
      'title': "Women's Watches",
      'products': 'Women Watches',
      'image': 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=80',
      'textLeft': false,
      'categorie': ApiConstants.womensWatches,
    },
  ];

  void goToProductScreen({
    required String categoryEndPoint,
    required String categoryName,
  }) {
    Get.toNamed(
      AppRoutes.allProductsScreen,
      arguments: [categoryEndPoint, categoryName],
    );
  }
}
