class ApiConstants {
  static final String baseUrl = 'https://dummyjson.com/products/category';
  static final String authBaseUrl = 'https://dummyjson.com';

  //User endpoint
  static const String authLoginUrl = '/auth/login';
  static const String authGetme = '/auth/me';

  //EndPoints
  static const String beauty = '/beauty';
  static const String fragrances = '/fragrances';
  static const String furniture = '/furniture';
  static const String groceries = '/groceries';
  static const String homeDecoration = '/home-decoration';
  static const String kitchenAccessories = '/kitchen-accessories';
  static const String laptops = '/laptops';
  static const String mensShirts = '/mens-shirts';
  static const String mensShoes = '/mens-shoes';
  static const String mensWatches = '/mens-watches';
  static const String mobileAccessories = '/mobile-accessories';
  static const String motorcycle = '/motorcycle';
  static const String skinCare = '/skin-care';
  static const String smartphones = '/smartphones';
  static const String sportsAccessories = '/sports-accessories';
  static const String sunglasses = '/sunglasses';
  static const String tablets = '/tablets';
  static const String tops = '/tops';
  static const String vehicle = '/vehicle';
  static const String womensBags = '/womens-bags';
  static const String womensDresses = '/womens-dresses';
  static const String womensJewellery = '/womens-jewellery';
  static const String womensShoes = '/womens-shoes';
  static const String womensWatches = '/womens-watches';

  //Headers
  static const String contentType = 'application/json';
  static const String authorization = 'Authorization';
  static const String acceptLanguage = 'Accept-Language';

  //Timeouts
  static const int connectTimerOutsMs = 15000;
  static const int receiveTimerOutsMs = 15000;
  static const int sendTimerOutsMs = 15000;
}
