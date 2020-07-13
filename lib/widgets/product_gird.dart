import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';
import 'product_item.dart';

class ProductGridViewBuilder extends StatelessWidget {
  final bool showFav;
  ProductGridViewBuilder(this.showFav);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductsProvider>(context);
    final products = showFav ? productData.favoritItems : productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // create: (c) => products[i],
        value: products[i],
        child: ProductItem(
            // products[i].id,
            // products[i].title,
            // products[i].imageUrl,
            ),
      ),
    );
  }
}
