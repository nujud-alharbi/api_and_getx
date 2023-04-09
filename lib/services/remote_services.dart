
import 'package:api_with_getx/model/product.dart';
import 'package:http/http.dart' as http;
class RemoteServices{
static var client = http.Client();



static Future <List<Product>?> fetchProduct ()async{
  var url = 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline';
var response = await  client.get(Uri.parse(url));
  if (response.statusCode == 200){
    var jsonString = response.body;
    return productFromJson(jsonString);

  }else{

    return null;
  }

}


}