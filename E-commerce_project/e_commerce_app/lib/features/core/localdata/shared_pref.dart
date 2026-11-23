import 'dart:convert';

import 'package:e_commerce_app/features/data/models/cart_product_model.dart';
import 'package:e_commerce_app/features/data/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String userKey = 'user';
  static const String userListKey = 'userList';
  static const String cartListKey = 'cartList';
  static const String isLoggedInKey = 'isLoggedIn';
  static const String favouriteListKey = 'favouriteList';

  static const String accessToken = 'accessToken';

  // Current User
  static Future<void> setUser(Map<String, dynamic> user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(userKey, jsonEncode(user));
  }

  static Future<Map<String, dynamic>?> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? userString = prefs.getString(userKey);

    if (userString == null) {
      return null;
    }

    final dynamic decodedUser = jsonDecode(userString);

    return Map<String, dynamic>.from(decodedUser);
  }

  // User List
  static Future<void> setUserList(List<Map<String, dynamic>> userList) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(userListKey, jsonEncode(userList));
  }

  static Future<List<Map<String, dynamic>>> getUserList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? userString = prefs.getString(userListKey);

    if (userString == null) {
      return [];
    }

    final List<dynamic> decodedList = jsonDecode(userString);

    return decodedList.map((item) => Map<String, dynamic>.from(item)).toList();
  }

  // Logged In
  static Future<void> setLoggedIn(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool(isLoggedInKey, value);
  }

  static Future<bool> getLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool(isLoggedInKey) ?? false;
  }

  // Cart
  static Future<void> setCart(List<CartProductModel> cart) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      cartListKey,
      jsonEncode(cart.map((item) => item.toJson()).toList()),
    );
  }

  static Future<List<CartProductModel>> getCart() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? cartString = prefs.getString(cartListKey);

    if (cartString == null) {
      return [];
    }

    final List<dynamic> decodedList = jsonDecode(cartString);

    return decodedList
        .map(
          (item) => CartProductModel.fromJson(Map<String, dynamic>.from(item)),
        )
        .toList();
  }

  static Future<void> setAccessToken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(accessToken, value);
  }

  static Future<String?> getAccessToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(accessToken);
  }

  static Future<void> clearAccessToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(accessToken);
  }

  // Favourite
  static Future<void> setFavourite(List<ProductModel> favourites) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      favouriteListKey,
      jsonEncode(favourites.map((item) => item.toJson()).toList()),
    );
  }

  static Future<List<ProductModel>> getFavourite() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? favouriteString = prefs.getString(favouriteListKey);

    if (favouriteString == null) {
      return [];
    }

    final List<dynamic> decodedList = jsonDecode(favouriteString);

    return decodedList
        .map((item) => ProductModel.fromJson(Map<String, dynamic>.from(item)))
        .toList();
  }
}
