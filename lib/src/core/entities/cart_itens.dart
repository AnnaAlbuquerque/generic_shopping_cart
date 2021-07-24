import 'dart:convert';

import 'package:generic_shopping_cart/src/core/entities/product.dart';

class CartItens {
  int quantity;
  Product product;

  CartItens({
    this.quantity = 1,
    required this.product,
  });

  CartItens copyWith({
    int? quantity,
    Product? product,
  }) {
    return CartItens(
      quantity: quantity ?? this.quantity,
      product: product ?? this.product,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
      'product': product.toMap(),
    };
  }

  factory CartItens.fromMap(Map<String, dynamic> map) {
    return CartItens(
      quantity: map['quantity'],
      product: Product.fromMap(map['product']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItens.fromJson(String source) =>
      CartItens.fromMap(json.decode(source));

  @override
  String toString() => 'CartItens(quantity: $quantity, product: $product)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItens && other.product == product;
  }

  @override
  int get hashCode => quantity.hashCode ^ product.hashCode;
}
