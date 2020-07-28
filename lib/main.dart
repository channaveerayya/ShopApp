import 'package:ShopApp/providers/auth.dart';
import 'package:ShopApp/providers/cart.dart';
import 'package:ShopApp/providers/orders.dart';
import 'package:ShopApp/screens/auth_screen.dart';
import 'package:ShopApp/screens/cart_screem.dart';
import 'package:ShopApp/screens/edit_product_screen.dart';
import 'package:ShopApp/screens/user_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/product_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products_provider.dart';
import './screens/orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider.value(
          value: ProductsProvider(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            accentColor: Colors.lightBlue,
            fontFamily: 'Lato'),
        home: AuthScreen(),
        routes: {
          ProductDetailScreen.productDetailScreenRoute: (ctx) =>
              ProductDetailScreen(),
          CartScreen.cartScreenRoute: (ctx) => CartScreen(),
          OrdersScreen.ordersSreenRoute: (ctx) => OrdersScreen(),
          UserProductScreen.userProductScreenRoute: (ctx) =>
              UserProductScreen(),
          EditProductScreen.editProductScreenRoute: (ctx) =>
              EditProductScreen(),
        },
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MyShop'),
//       ),
//       body: Center(
//         child: Text('Let\'s build a shop!'),
//       ),
//     );
//   }
// }
