import 'package:pizzashop/domain/entities/pizza.dart';

abstract class PizzaRepository {
  List<Pizza> get pizzas;
}
