

import 'package:api_with_getx/model/product.dart';
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  final Product product;

  const ProductTitle(this.product,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(

              children: [
                SizedBox(height: 8,),
                Text(product.name,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.w900,
                overflow: TextOverflow.ellipsis),),
                SizedBox(height: 8,),
                if(product.rating != null)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),

                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Text(
                          product.rating.toString(),
                          style: TextStyle(color: Colors.white),
                        )

                      ],
                    ),
                  ),

                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),

                  ),
                  child: Image.network(
                    product.imageLink,
                    fit: BoxFit.cover,

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
