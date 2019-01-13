import 'package:flutter/material.dart';

import '../product_manager.dart';
import './product-admin.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage(this.products);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(title: Text('Manage Product'), onTap: () {
              Navigator.pushReplacementNamed(context, '/admin');
            })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(products),
    );
  }
}
