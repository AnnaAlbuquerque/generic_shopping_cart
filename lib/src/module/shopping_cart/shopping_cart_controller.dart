import 'package:generic_shopping_cart/src/core/entities/cart_itens.dart';
import 'package:mobx/mobx.dart';

part 'shopping_cart_controller.g.dart';

class ShoppingCartController = ShoppingCartBase with _$ShoppingCartController;

abstract class ShoppingCartBase with Store {
  @observable
  var listItems = ObservableList<CartItens>();

  @observable
  int itemQntTotal = 0;

  @action
  void addItemCart(CartItens item) {
    int index = listItems.indexOf(item);
    if (index >= 0) {
      listItems[index].quantity = listItems[index].quantity + item.quantity;
    } else {
      listItems.add(item);
    }
    addItemQntTotal(item.quantity);
  }

  @action
  void addItemQntTotal(int qnt) {
    itemQntTotal = itemQntTotal + qnt;
  }

  @action
  void addItemQnt(int index) {
    listItems[index].quantity++;
    addItemQntTotal(1);
  }

  @action
  void subtractItemQnt(int index) {
    if (listItems[index].quantity == 1) {
      listItems.removeAt(index);
    } else {
      listItems[index].quantity--;
    }
    addItemQntTotal(-1);
  }
}
