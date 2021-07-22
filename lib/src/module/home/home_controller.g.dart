// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$numberProductsAtom = Atom(name: 'HomeControllerBase.numberProducts');

  @override
  int get numberProducts {
    _$numberProductsAtom.reportRead();
    return super.numberProducts;
  }

  @override
  set numberProducts(int value) {
    _$numberProductsAtom.reportWrite(value, super.numberProducts, () {
      super.numberProducts = value;
    });
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  void incrementNumberProducts() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.incrementNumberProducts');
    try {
      return super.incrementNumberProducts();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
numberProducts: ${numberProducts}
    ''';
  }
}
