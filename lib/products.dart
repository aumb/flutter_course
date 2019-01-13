import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child:  Text(products[index]['title']),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(context,'/product/' + index.toString()),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards = Center(
      child: Text("No Products found, please add some"),
    );

    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productCards;
  }

  // @override
  // Widget build(BuildContext context) {
  //   return products.length >0 ? ListView.builder(                   INLINE IF STATEMENT
  //     itemBuilder: _buildProductItem,
  //     itemCount: products.length,
  //   ) : Center(child: Text("No Products found, please add some"),);
  // }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
