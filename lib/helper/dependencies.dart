import 'package:get/get.dart';
import 'package:keroma/controllers/popular_product_controller.dart';
import 'package:keroma/controllers/recommended_product_controller.dart';
import 'package:keroma/data/api/api_client.dart';
import 'package:keroma/data/repository/popular_product_repo.dart';
import 'package:keroma/data/repository/recommended_product_repo.dart';
import 'package:keroma/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient:Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}

