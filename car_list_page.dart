import 'package:flutter/material.dart';
import 'car_details_page.dart';
import 'car.dart';

class CarListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Cars' ,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarListItem(car: cars[index]);
        },
      ),
    );
  }
}

class CarListItem extends StatelessWidget {
  final Car car;

  CarListItem({required this.car});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(width: 50,),
              Container(
                width: 180,
                child: Column(
                  children: [
                    Text(car.name, style: TextStyle(fontSize: 18),),
                    Image.asset(car.assets),
                  ],
                ),
              ),
              SizedBox(width: 65,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarDetailsPage(car: car)),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),
                child: Text(
                    'View More',
                  style: TextStyle(color: Colors.white),
                ),

              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}


