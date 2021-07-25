import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:generic_shopping_cart/src/core/entities/cart_itens.dart';
import 'package:generic_shopping_cart/src/module/home/home_controller.dart';
import 'package:generic_shopping_cart/src/module/shopping_cart/shopping_cart_controller.dart';
import 'package:generic_shopping_cart/src/module/shopping_cart/shopping_cart_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  ShoppingCartController cartController = ShoppingCartController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ShoppingCartPage(
                        controller: cartController,
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart,
                ),
              ),
              Observer(builder: (_) {
                return Positioned(
                  right: 11,
                  top: 11,
                  child: cartController.itemQntTotal > 0
                      ? Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            "${cartController.itemQntTotal}",
                          ),
                        )
                      : Container(),
                );
              }),
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(controller.products[index].name),
                onTap: () {
                  cartController.addItemCart(
                    CartItens(
                      product: controller.products[index],
                      quantity: 1,
                    ),
                  );
                });
          }),
    );
  }
}
