import 'package:flutter/material.dart';
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
      body: ListView.builder(
        itemCount: widget.controller.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.controller.items[index].name),
          );
        },
      ),
    );
  }
}
