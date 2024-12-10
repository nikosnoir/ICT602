import 'package:flutter/material.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  // Adding a variable for Category
  final Category category;

  // Constructor for HomePage
  const HomePage({this.category = Category.all, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Pass the Category variable to AsymmetricView
    return AsymmetricView(
      products: ProductsRepository.loadProducts(category),
    );
  }
}