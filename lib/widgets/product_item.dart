import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import '../providers/product.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String imageURL;
  // final String title;
  // final String id;
  // ProductItem(this.id, this.title, this.imageURL);

  @override
  Widget build(BuildContext context) {
    final prodData = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return Card(
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.of(
              context,
            ).pushNamed(
              ProductDetailScreen.productDetailScreenRoute,
              arguments: prodData.id,
            );
          },
          child: GridTile(
            child: Image.network(
              prodData.imageUrl,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: Consumer<Product>(
                builder: (ctx, prodData, _) => IconButton(
                  icon: Icon(
                    prodData.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  onPressed: () => prodData.toggleFavorite(),
                ),
              ),
              title: Text(
                prodData.title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  cart.addItem(prodData.id, prodData.price, prodData.title);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
