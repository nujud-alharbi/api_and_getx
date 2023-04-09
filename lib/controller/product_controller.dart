


import 'package:api_with_getx/services/remote_services.dart';
import 'package:get/get.dart';

import '../model/product.dart';

class ProductController extends GetxController{
var productList = <Product>[].obs;

var isLoading = true.obs;

@override
  void onInit() {
    fetchProduct();
    super.onInit();
  }


void fetchProduct()async{


try{
  isLoading(true);
  var products =  await  RemoteServices.fetchProduct();
  if(products != null){

    productList.value = products;
    print(productList.length);
  }


}
finally{
  isLoading(false);

}


}

}