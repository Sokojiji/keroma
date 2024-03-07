import 'package:get/get.dart';
import 'package:keroma/data/api/api_client.dart';
import 'package:keroma/utils/app_constants.dart';

class RecommendedProductRepo extends GetxService{

  final ApiClient apiClient;
  RecommendedProductRepo ({required this.apiClient});

  Future<Response> getRecommendedProductList() async{
  return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
  }


