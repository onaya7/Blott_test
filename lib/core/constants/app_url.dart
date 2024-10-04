import 'package:blott/core/constants/env.dart';

class AppUrl {
  AppUrl._();

  //Base URL
  static String baseUrl = Env.apiBaseUrl;

  static String getNews({required String token}) =>
      "https://finnhub.io/api/v1/news?category=general&token=$token";

  // Auth Endpoints ------------------------------------------------------------

  // Home Endpoints ------------------------------------------------------------
}
