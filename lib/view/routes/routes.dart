import 'package:ecommerce_app/view/pages/account/account.dart';
import 'package:ecommerce_app/view/pages/address/add_address.dart';
import 'package:ecommerce_app/view/pages/address/address.dart';
import 'package:ecommerce_app/view/pages/cart/cart.dart';
import 'package:ecommerce_app/view/pages/category_details/category_details.dart';
import 'package:ecommerce_app/view/pages/favourite/favourite.dart';
import 'package:ecommerce_app/view/pages/filter/filter.dart';
import 'package:ecommerce_app/view/pages/flash_sale/flash_sale.dart';
import 'package:ecommerce_app/view/pages/home/home_screen.dart';
import 'package:ecommerce_app/view/pages/login/login_with_email.dart';
import 'package:ecommerce_app/view/pages/login/login_with_mobile.dart';
import 'package:ecommerce_app/view/pages/mega_sale/mega_sale.dart';
import 'package:ecommerce_app/view/pages/notification/notification.dart';
import 'package:ecommerce_app/view/pages/offer/offer.dart';
import 'package:ecommerce_app/view/pages/product_detail/product_deatil.dart';
import 'package:ecommerce_app/view/pages/profile/edit_profile.dart';
import 'package:ecommerce_app/view/pages/profile/profile.dart';
import 'package:ecommerce_app/view/pages/register/register_one.dart';
import 'package:ecommerce_app/view/pages/review/review_product.dart';
import 'package:ecommerce_app/view/pages/review/write_review.dart';
import 'package:ecommerce_app/view/pages/search/search.dart';
import 'package:ecommerce_app/view/pages/splash/splash_screen.dart';
import 'package:ecommerce_app/view/shared/pages/navigatiton_bar/my_navigation_bar.dart';
import 'package:get/get.dart';

import '../pages/more_category.dart/more_category_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const MyNavigationBar()),
    GetPage(name: '/splash', page: () => const SplashScreen()),
    GetPage(name: '/elogin', page: () => LoginEmailScreen()),
    GetPage(name: '/mlogin', page: () => LoginMobileScreen()),

    GetPage(name: '/regOne', page: () => RegisterScreenOne()),
    GetPage(name: '/moreCategory', page: () => MoreCategoryScreen()),

    GetPage(name: '/offer', page: () => OfferScreen()),
    GetPage(name: '/fav', page: () => FavouriteScreen()),
    GetPage(name: '/product_detail', page: () => ProductDetailScreen()),
    GetPage(name: '/review_product', page: () => const ReviewProductScreen()),
    GetPage(name: '/write_review', page: () => const WriteReviewScreen()),
    GetPage(name: '/d', page: () => HomeScreen()),
    GetPage(name: '/notification', page: () => NotificationScreen()),
    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/search', page: () => const SearchScreen()),
    GetPage(name: '/filter', page: () => const FilterScreen()),
    GetPage(name: '/cart', page: () => CartScreen()),
    GetPage(name: '/offer', page: () => OfferScreen()),
    GetPage(name: '/account', page: () => AccountScreen()),
    GetPage(name: '/profile', page: () => ProfilePage()),
    GetPage(name: '/flashSale', page: () => FlashSaleScreen()),
    GetPage(name: '/megaSale', page: () => MegaSaleScreen()),
    GetPage(name: '/categoryDetails', page: () => CategoryDetails()),
    GetPage(name: '/edit', page: () => EditProfile()),
    GetPage(name: '/address', page: () => AddressScreen()),
    GetPage(name: '/addAddress', page: () =>  AddAdress()),

    // GetPage(name: '/', page: () => AddressScreen()),
  ];
}
