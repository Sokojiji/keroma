import 'package:get/get.dart';
import 'package:keroma/data/api/api_client.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo ({required this.apiClient, required appClient});

  Future<Response> getPopularProductList() async{
  return await apiClient.getData("End point url");
  }
}