import 'package:pizzashop/data/repositories/pizza_repository.dart';
import 'package:pizzashop/domain/entities/pizza.dart';
import 'package:pizzashop/domain/repositories/static_pizza_repository.dart';
import 'package:pizzashop/domain/usecases/usecase.dart';

class GetPizzaSlicesUsecase implements UseCase<List<Pizza>, NoParams> {
  final PizzaRepository _pizzaRepository;
  GetPizzaSlicesUsecase() : _pizzaRepository = StaticPizzaRepository();

  @override
  Future<List<Pizza>> call(NoParams params) async {
    return _pizzaRepository.pizzas;
  }
}
