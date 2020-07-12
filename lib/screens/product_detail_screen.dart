import 'package:ShopApp/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // ProductDetailScreen(this.title);
  static const productDetailScreenRoute = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final producetId = ModalRoute.of(context).settings.arguments as String;
    final prodData = Provider.of<ProductsProvider>(context, listen: false)
        .findById(producetId);
    return Scaffold(
      appBar: AppBar(
        title: Text(prodData.title),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
