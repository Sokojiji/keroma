import 'package:get/get.dart';
import 'package:keroma/pages/food/popular_food_detail.dart';
import 'package:keroma/pages/home/main_food_page.dart';

class RouteHelper{
  static const String initial ="/";
  static const String popularFood="/popular-food";
  
  static List<GetPage> routes=[
    GetPage(name: "/", page: ()=>MainFoodPage()),
    GetPage(name:popularFood, page: ()=>PopularFoodDetail()),
  ];
}
