import 'package:flutter/material.dart';
import 'package:r34_24/config/routes/routes_name.dart';
import 'package:r34_24/Screens/splash_screen.dart';
import 'package:r34_24/Screens/onbording_screen.dart';
import 'package:r34_24/product_info/product_details_page.dart';
import 'package:r34_24/entity/product.dart';
import 'package:r34_24/Screens/homepage_screen.dart';
import 'package:r34_24/Screens/account.dart';
import 'package:r34_24/Screens/cart.dart';
import 'package:r34_24/Screens/fav.dart';
import 'package:r34_24/Screens/explore.dart';
import 'package:r34_24/Screens/login.dart';

class RoutesHandler {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case RoutesName.onbordingScreen:
        return MaterialPageRoute(
          builder: (context) => OnbordingScreen(),
        );
      case RoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomepageScreen(),
        );
      case RoutesName.productDetailsScreen:
        if (settings.arguments is Product) {
          final product = settings.arguments as Product;
          return MaterialPageRoute(
            builder: (context) => ProductDetailsPage(product: product),
          );
        }
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text('Product data not provided')),
          ),
        );
        case RoutesName.accountScreen:
        return MaterialPageRoute(
          builder: (context) => Account(),
        );

        case RoutesName.cartScreen:
        return MaterialPageRoute(
          builder: (context) => Cart(),
        );

        case RoutesName.favScreen:
        return MaterialPageRoute(
          builder: (context) => Fav(),
        );

        case RoutesName.exploreScreen:
        return MaterialPageRoute(
          builder: (context) => Explore(),
        );
        case RoutesName.login:
        return MaterialPageRoute(
          builder:(context)=> Login(),
          );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text('No routes defined')),
          ),
        );
    }
  }
}
