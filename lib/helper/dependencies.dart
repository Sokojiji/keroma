import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:keroma/controllers/popular_product_controller.dart';
import 'package:keroma/data/api/api_client.dart';
import 'package:keroma/data/repository/popular_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));
  //repos
  Get.lazyPut(() => PopularProductRepo(
    apiClient: Get.find(),
    appClient: Get.find() ?? AppClient(), //use a default value if null
  ));
  //controllers
  Get.lazyPut(() => PopularProductController(
    popularProductRepo: Get.find(),
    appClient: Get.find(),
  ));
}

class AppClient {
}

//or

class PopularProductRepo {
  final ApiClient apiClient;
  final AppClient appClient; //make this parameter required

  PopularProductRepo({
    required this.apiClient, //use the required keyword
    required this.appClient, //use the required keyword
  });
}
