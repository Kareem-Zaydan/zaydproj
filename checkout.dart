import 'package:flutter/material.dart';
import 'main.dart';
class Checkout extends StatefulWidget {
  const Checkout({super.key});
  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout page'),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Total Price: \$${totalPrice.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}