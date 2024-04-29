import 'package:e_commerce/models/category_model/category_model.dart';
import 'package:e_commerce/models/product_model/product_model.dart';
import 'package:e_commerce/screens/home_screen/widgets/hero_carousel_card_widget.dart';
import 'package:e_commerce/screens/home_screen/widgets/product_card.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:e_commerce/widgets/section_title_widget.dart';
import 'package:e_commerce/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.5,
            viewportFraction: 0.9,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
          items: CategoryModel.categories
              .map((category) => HeroCarouselCard(categoryModel: category))
              .toList(),
        ),
        const SectionTitle(title: 'RECOMMENDED'),
        ProductCarousel(
          products: ProductModel.products
              .where((product) => product.isRecommended)
              .toList(),
        ),
        const SectionTitle(title: 'MOST POPULAR'),
        ProductCarousel(
          products: ProductModel.products
              .where((product) => product.isPopular)
              .toList(),
        )
      ],
    );
  }
}

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: ProductCard(productModel: products[index]),
        ),
        itemCount: products.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
