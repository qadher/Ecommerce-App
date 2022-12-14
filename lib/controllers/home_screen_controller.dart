import 'package:ecommerce_app/models/category_model.dart';
import 'package:ecommerce_app/models/home_screen/banner_model.dart';
import 'package:ecommerce_app/models/home_screen/flash_sale_model.dart';
import 'package:ecommerce_app/models/home_screen/mega_sale_model.dart';
import 'package:ecommerce_app/models/home_screen/recommended_products.dart';
import 'package:ecommerce_app/services/AppServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  @override
  void onInit() {
    fetchFlashSaleItems();
    fetchCategoryItems();
    fetchMegaSaleProduct();
    fetchRecommendedProduct();
    fetchBannerItems();
    fetchCategoryItems();
    super.onInit();
  }

  // late Timer timer;
  // RxInt start = 10.obs;
  final defaultDuration = const Duration(days: 2, hours: 2, minutes: 30);
  final defaultPadding =
      const EdgeInsets.symmetric(horizontal: 10, vertical: 5);

  final flashSaleList = Rx<List<Products>>([]);
  final megaSaleList = Rx<List>([]);
  final recommendedList = Rx<List<RecommendedProduct>>([]);
  final bannerList = Rx<List<BannerDatum>>([]);
  final categoryList = Rx<List<AllCategoryDatum>>([]);

  fetchBannerItems() async {
    try {
      var response = await getResponse('/banner-data');

      var bannerModel = bannerModelFromJson(response);

      bannerList.value = bannerModel.data.bannerData;
    } catch (e) {
      throw e.toString();
    }
  }

  fetchCategoryItems() async {
    try {
      var response = await getResponse('/category-data');

      var categoryModel = categoryModelFromJson(response);

      categoryList.value = categoryModel.data.allCategoryData;
    } catch (e) {
      throw e.toString();
    }
  }

  fetchFlashSaleItems() async {
    try {
      var response = await getDataResponse('/flash-sale');

      var flashSaleModel = FlashSaleModel.fromJson(response);

      flashSaleList.value = flashSaleModel.products!;
    } catch (e) {
      throw e.toString();
    }
  }

  fetchMegaSaleProduct() async {
    try {
      var response = await getResponse('/mega-sale-products');
      var model = megaSaleProductsFromJson(response);
      megaSaleList.value = model.data.products;
    } catch (e) {
      throw e.toString();
    }
  }

  fetchRecommendedProduct() async {
    try {
      var response = await getResponse('/recommended-products');
      var model = recommendedProductsFromJson(response);
      recommendedList.value = model.data.products;
    } catch (e) {
      throw e.toString();
    }
  }

  // void startTimer() {
  //   const oneSec = Duration(seconds: 1);
  //   timer = Timer.periodic(
  //     oneSec,
  //     (Timer timer) {
  //       if (start.value == 0) {
  //         timer.cancel();
  //       } else {
  //         start.value--;
  //       }
  //     },
  //   );
  // }
}
