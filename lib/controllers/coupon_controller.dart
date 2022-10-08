import 'dart:convert';

import 'package:ecommerce_app/models/coupon_model.dart';
import 'package:ecommerce_app/services/AppServices.dart';
import 'package:get/state_manager.dart';

class CouponController extends GetxController {
  @override
  void onInit() {
    getCoupons;
    super.onInit();
  }

    var CouponDetails = Rx<List<CouponDatum>>([]);

  getCoupons() async {
    var response =await AppServices.getCoupons();

    CouponDetails.value = couponModelFromJson(jsonEncode(response)).data.couponData;
  }
}
