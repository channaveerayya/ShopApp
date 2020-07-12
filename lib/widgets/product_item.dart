import 'package:ShopApp/screens/product_overview_screen.dart';
import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String imageURL;
  final String title;
  final String id;
  ProductItem(this.id, this.title, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.productDetailScreenRoute,
              arguments: id,
            );
          },
          child: GridTile(
            child: Image.network(
              imageURL,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
