// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShoppingCartController on ShoppingCartBase, Store {
  final _$listItemsAtom = Atom(name: 'ShoppingCartBase.listItems');

  @override
  ObservableList<CartItens> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<CartItens> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  final _$itemQntTotalAtom = Atom(name: 'ShoppingCartBase.itemQntTotal');

  @override
  int get itemQntTotal {
    _$itemQntTotalAtom.reportRead();
    return super.itemQntTotal;
  }

  @override
  set itemQntTotal(int value) {
    _$itemQntTotalAtom.reportWrite(value, super.itemQntTotal, () {
      super.itemQntTotal = value;
    });
  }

  final _$ShoppingCartBaseActionController =
      ActionController(name: 'ShoppingCartBase');

  @override
  void addItemCart(CartItens item) {
    final _$actionInfo = _$ShoppingCartBaseActionController.startAction(
        name: 'ShoppingCartBase.addItemCart');
    try {
      return super.addItemCart(item);
    } finally {
      _$ShoppingCartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addItemQntTotal(int qnt) {
    final _$actionInfo = _$ShoppingCartBaseActionController.startAction(
        name: 'ShoppingCartBase.addItemQntTotal');
    try {
      return super.addItemQntTotal(qnt);
    } finally {
      _$ShoppingCartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addItemQnt(int index) {
    final _$actionInfo = _$ShoppingCartBaseActionController.startAction(
        name: 'ShoppingCartBase.addItemQnt');
    try {
      return super.addItemQnt(index);
    } finally {
      _$ShoppingCartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subtractItemQnt(int index) {
    final _$actionInfo = _$ShoppingCartBaseActionController.startAction(
        name: 'ShoppingCartBase.subtractItemQnt');
    try {
      return super.subtractItemQnt(index);
    } finally {
      _$ShoppingCartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems},
itemQntTotal: ${itemQntTotal}
    ''';
  }
}
