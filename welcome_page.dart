import 'package:flutter/material.dart';
import 'car_list_page.dart';
import 'checkout.dart';
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to our car showroom'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/nissan-maxima-front-angle-low-view-606472.webp', height: 172, width: 250),
            Image.asset('assets/Ford-Mustang-Interior-76248.webp', height: 172, width: 250),
            Image.asset('assets/nissan-maxima-wheel-164605.webp', height: 172, width: 250),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarListPage()),
                    );
                  },
                  child: Text('View Available Cars'),
                ),
                SizedBox(width: 40,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Checkout()),
                    );
                  },
                  child: Text('Go to checkout'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
