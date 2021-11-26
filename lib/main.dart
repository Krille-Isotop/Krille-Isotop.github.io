import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pizzashop/domain/usecases/get_pizza_slices.dart';
import 'package:pizzashop/domain/usecases/usecase.dart';
import 'package:pizzashop/presentation/ui/pizza_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pizzas = GetPizzaSlicesUsecase().call(NoParams());

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: ListView.builder(
              itemCount: pizzas.length,
              itemBuilder: (context, index) {
                final pizza = pizzas[index];
                return PizzaCard(
                  type: pizza.type,
                  price: pizza.price,
                );
              }),
        ),
      ),
    );
  }
}
