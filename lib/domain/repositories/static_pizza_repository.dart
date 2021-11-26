import 'package:pizzashop/data/repositories/pizza_repository.dart';
import 'package:pizzashop/domain/entities/pizza.dart';

class StaticPizzaRepository implements PizzaRepository {
  @override
  List<Pizza> get pizzas => [Pizza("Vesuvio", 29), Pizza("Hawaii", 39)];
}
