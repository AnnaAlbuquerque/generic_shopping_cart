import 'dart:convert';

import 'package:mobx/mobx.dart';

import 'package:generic_shopping_cart/src/core/entities/product.dart';

part 'cart_itens.g.dart';

class CartItens = CartItensBase with _$CartItens;

abstract class CartItensBase with Store {
  @observable
  int quantity;
  Product product;

  CartItensBase({
    this.quantity = 1,
    required this.product,
  });

  @override
  String toString() => 'CartItensBase(quantity: $quantity, product: $product)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItensBase && other.product == product;
  }

  @override
  int get hashCode => quantity.hashCode ^ product.hashCode;
}
