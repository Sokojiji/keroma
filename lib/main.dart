import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:keroma/controllers/popular_product_controller.dart';
import 'package:keroma/controllers/recommended_product_controller.dart';
import 'package:keroma/pages/home/main_food_page.dart';
import 'package:keroma/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;Future<void> main() async {

WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    // Get.find<CartController>().getCartData();
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();

     {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Keroma",
          home: MainFoodPage(),
          initialRoute: RouteHelper.initial,
          // home: SplashScreen(),
         // initialRoute: RouteHelper.getSplashPage(),
         // getPages: RouteHelper.routes,
        );
      }
    }
}
