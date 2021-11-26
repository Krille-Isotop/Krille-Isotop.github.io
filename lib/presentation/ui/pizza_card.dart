import 'package:flutter/material.dart';
import 'package:pizzashop/presentation/ui/text.dart';

class PizzaCard extends StatelessWidget {
  final String type;
  final double price;

  const PizzaCard({required this.type, required this.price});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 300,
        height: 300,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(border: Border.all(color: Colors.green, width: 2)),
        child: SizedBox(
            child: Column(children: [
          Image.asset("pizza.jpeg"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Heading(type),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Paragraph("${price.round()} kr"),
          ),
          ElevatedButton(
              onPressed: () {
                print("pizza ordered");
              },
              child: const Text("Order"))
        ])),
      ),
    );
  }
}
