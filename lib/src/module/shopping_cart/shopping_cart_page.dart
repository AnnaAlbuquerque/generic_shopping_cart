import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:generic_shopping_cart/src/module/shopping_cart/shopping_cart_controller.dart';

class ShoppingCartPage extends StatefulWidget {
  ShoppingCartPage({Key? key, required this.controller}) : super(key: key);

  final ShoppingCartController controller;

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: widget.controller.listItems.isEmpty
          ? Center(
              child: Text("Empty Cart"),
            )
          : Observer(
              builder: (_) {
                return ListView.builder(
                  itemCount: widget.controller.listItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title:
                          Text(widget.controller.listItems[index].product.name),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              widget.controller.subtractItemQnt(index);
                            },
                            icon: Icon(Icons.remove),
                          ),
                          Text(
                              "${widget.controller.listItems[index].quantity}"),
                          IconButton(
                            onPressed: () {
                              widget.controller.addItemQnt(index);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
