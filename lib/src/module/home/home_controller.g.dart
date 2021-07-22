// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$qtCartProductsAtom = Atom(name: 'HomeControllerBase.qtCartProducts');

  @override
  int get qtCartProducts {
    _$qtCartProductsAtom.reportRead();
    return super.qtCartProducts;
  }

  @override
  set qtCartProducts(int value) {
    _$qtCartProductsAtom.reportWrite(value, super.qtCartProducts, () {
      super.qtCartProducts = value;
    });
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  void changeItensCart() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeItensCart');
    try {
      return super.changeItensCart();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
qtCartProducts: ${qtCartProducts}
    ''';
  }
}
