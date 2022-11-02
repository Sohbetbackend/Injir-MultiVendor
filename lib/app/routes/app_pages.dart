import 'package:get/get.dart';
import 'package:injir/app/modules/home/views/bottom_nav_bar_view.dart';

import 'package:injir/app/modules/profil/auth/bindings/auth_binding.dart';
import 'package:injir/app/modules/profil/auth/views/auth_view.dart';
import 'package:injir/app/modules/cart/bindings/cart_binding.dart';
import 'package:injir/app/modules/cart/views/cart_view.dart';
import 'package:injir/app/modules/categories/bindings/categories_binding.dart';
import 'package:injir/app/modules/categories/views/categories_view.dart';
import 'package:injir/app/modules/favorites/bindings/favorites_binding.dart';
import 'package:injir/app/modules/favorites/views/favorites_view.dart';
import 'package:injir/app/modules/home/bindings/home_binding.dart';
import 'package:injir/app/modules/others/product_profil/bindings/product_profil_binding.dart';
import 'package:injir/app/modules/others/product_profil/views/product_profil_view.dart';
import 'package:injir/app/modules/profil/bindings/profil_binding.dart';
import 'package:injir/app/modules/profil/views/profil_view.dart';
import 'package:injir/app/modules/others/show_all_products/bindings/show_all_products_binding.dart';
import 'package:injir/app/modules/others/show_all_products/views/show_all_products_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => BottomNavBarView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_PROFIL,
      page: () => ProductProfilView(),
      binding: ProductProfilBinding(),
    ),
    GetPage(
      name: _Paths.SHOW_ALL_PRODUCTS,
      page: () => ShowAllProductsView("as"),
      binding: ShowAllProductsBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORIES,
      page: () => CategoriesView(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITES,
      page: () => FavoritesView(),
      binding: FavoritesBinding(),
    ),
  ];
}
