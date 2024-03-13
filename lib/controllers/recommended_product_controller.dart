import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:keroma/data/repository/recommended_product_repo.dart';
import 'package:keroma/models/product_model.dart';

class RecommendedProductController extends GetxController {
 final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<ProductModel> _recommendedProductList=[];
  List<ProductModel> get recommendedProductList =>_recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

 Future<void> getRecommendedProductList()async{
   Response response = await recommendedProductRepo.getRecommendedProductList();
   if(response.statusCode==200){

     print("got products");
     _recommendedProductList=[];
     _recommendedProductList.addAll(Product.fromJson(response.body).products);
     // print(_popularProductList);
     _isLoaded=true;
     update();
   }else{   
     print("could not get products");
   }
 }
}
