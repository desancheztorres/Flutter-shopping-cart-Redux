import 'package:flutter/material.dart';
import 'package:flutter_redux_dev_tools/flutter_redux_dev_tools.dart';
import 'package:flutter_shopping_cart_redux/add_item_dialog.dart';
import 'package:flutter_shopping_cart_redux/shopping_list.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

import 'model/cart_item.dart';

class ShoppingCart extends StatelessWidget {
  final DevToolsStore<List<CartItem>> store;

  const ShoppingCart({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      endDrawer: new ReduxDevTools(store),
      body: new ShoppingList(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () => _openAddItemDialog(context)),
    );
  }
}

_openAddItemDialog(BuildContext context) {
  showDialog(context: context, builder: (context) => AddItemDialog());
}
