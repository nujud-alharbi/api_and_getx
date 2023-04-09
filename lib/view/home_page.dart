

import 'package:api_with_getx/controller/product_controller.dart';
import 'package:api_with_getx/view/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';


class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    productController.fetchProduct();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
              padding:  const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      'Shopx',
                      style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900,


                      ),
                    ),

                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.view_list_rounded),),
                IconButton(onPressed: (){}, icon: Icon(Icons.grid_view),),

              ],
            ),
          ),


          Expanded(
            child:   Obx((){
              // if(productController.)
                return StaggeredGridView.countBuilder(
                    crossAxisCount: 2,

                    itemCount: productController.productList.length,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    itemBuilder: (context ,index){

                      return ProductTitle(productController.productList[index]);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1));
            }





          )
          )],
      ),

    );
  }
}
