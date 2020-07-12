import 'package:ShopApp/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import './screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.lightBlue,
          fontFamily: 'Lato'),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailScreen.productDetailScreenRoute: (ctx) =>
            ProductDetailScreen(),
      },
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
