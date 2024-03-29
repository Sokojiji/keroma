import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:keroma/data/repository/popular_product_repo.dart';
import 'package:keroma/models/product_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<ProductModel> _popularProductList=[];
  List<ProductModel> get popularProductList=> _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future<void> getPopularProductList()async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){

     // print("got products");
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      _isLoaded=true;
      update();
    }else{

    }
  }

}