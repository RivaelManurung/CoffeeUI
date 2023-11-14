import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String CoffeeImagePath;
  final String CoffeeName;
  final String CoffeePrice;

  CoffeeTile(
      {required this.CoffeeImagePath,
      required this.CoffeeName,
      required this.CoffeePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // coffee Image
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(CoffeeImagePath),
              ),
            ),

            // coffee name
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                CoffeeName,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'With almond Milk',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            //price
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(CoffeePrice),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange),
                      child: Icon(Icons.add))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
