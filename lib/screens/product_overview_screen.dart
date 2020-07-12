import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_gird.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProduct = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductGridViewBuilder(),
    );
  }
}
