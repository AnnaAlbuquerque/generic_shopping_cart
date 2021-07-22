import 'package:generic_shopping_cart/src/core/entities/product.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  int numberProducts = 0;

  @action
  void incrementNumberProducts() {
    numberProducts++;
    print(numberProducts);
  }

  List<Product> products = [
    Product(name: "item 1", value: 10.0),
    Product(name: "item 2", value: 20.0),
    Product(name: "item 3", value: 30.0),
    Product(name: "item 4", value: 40.0),
    Product(name: "item 5", value: 50.0),
  ];
}
