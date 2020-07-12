import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // ProductDetailScreen(this.title);
  static const productDetailScreenRoute = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final producetId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
