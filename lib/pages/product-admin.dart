import 'package:flutter/material.dart';

import './product-create.dart';
import './products-list.dart';

class Mpro extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  Mpro(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                    title: Text('Products'),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/products');
                    })
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Manage product'),
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.create), text: 'Create Product'),
              Tab(icon: Icon(Icons.list), text: 'My Product'),
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductCreatePage(addProduct),
              ProductListPage(),
            ],
          )),
    );
  }
}
