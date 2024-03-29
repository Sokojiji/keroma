import 'package:get/get.dart';
import 'package:keroma/data/api/api_client.dart';
import 'package:keroma/helper/dependencies.dart';
import 'package:keroma/main.dart';
import 'package:keroma/utils/app_constants.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo ({required this.apiClient});

  Future<Response> getPopularProductList() async{
  return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
