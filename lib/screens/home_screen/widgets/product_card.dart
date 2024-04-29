import 'package:e_commerce/models/product_model/product_model.dart';
import 'package:e_commerce/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 2.5,
          height: 150,
          child: Image.network(productModel.imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          top: 60,
          child: Container(
            width: MediaQuery.sizeOf(context).width / 2.5,
            height: 60,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: productModel.name,
                      color: Colors.white,
                    ),
                    TextWidget(
                      text: '\$${productModel.price}',
                      color: Colors.white,
                    ),
                  ],
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
