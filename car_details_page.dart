
import 'checkout.dart';
import 'package:flutter/material.dart';
import 'car.dart';
import 'main.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;
  CarDetailsPage({required this.car});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(car.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Center(child: Image.asset(car.assets)),
            SizedBox(height: 20,),
            Text(car.toString(), style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
            Text("Description:\n${car.description}", style: TextStyle(fontSize: 18),),
            SizedBox(height: 70,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  totalPrice += car.price;
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Checkout()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),
                child:
                Text(
                    'Go to checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),

                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
