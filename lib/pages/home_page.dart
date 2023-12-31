import 'package:coffee_ui/util/coffee_tile.dart';
import 'package:coffee_ui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          // Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best Coffee for you",
              style: GoogleFonts.bebasNeue(
                fontSize: 53, // Adjusted the font size for better visibility
              ),
            ),
          ),
          SizedBox(height: 25),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee', // Corrected the hint text
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeType(
                  coffeeType: 'Cappuccino',
                  isSelected: false,
                ),
                CoffeeType(
                  coffeeType: 'Latte',
                  isSelected: true,
                ),
                CoffeeType(
                  coffeeType: 'Black',
                  isSelected: false,
                )
              ],
            ),
          ),

          // Horizontal list view of coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  CoffeeImagePath: 'lib/images/coffee.jpg',
                  CoffeeName: 'Latte',
                  CoffeePrice: '4.00',
                ),
                CoffeeTile(
                  CoffeeImagePath: 'lib/images/coffee.jpg',
                  CoffeeName: 'Cappuchino',
                  CoffeePrice: '4.00',
                ),
                CoffeeTile(
                  CoffeeImagePath: 'lib/images/coffee.jpg',
                  CoffeeName: 'Milk Coffee',
                  CoffeePrice: '4.00',
                ),
                CoffeeTile(
                  CoffeeImagePath: 'lib/images/coffee.jpg',
                  CoffeeName: 'Dark Coffee',
                  CoffeePrice: '4.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
