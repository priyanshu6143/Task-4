import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Homepage extends StatelessWidget {
  final String name;
  final List<String> foodNames = const [
    "Margherita Pizza",
    "Classic Burger",
    "Hakka Noodles",
    "Chocolate Cake",
  ];

  final List<String> prices = const  [
    "₹199",
    "₹149",
    "₹129",
    "₹99",
  ];

  final List<String> categories = const [
    "Pizza",
    "Burger",
    "Noodles",
    "Desserts",
  ];

  final List<String> categoryImages = const [
    "assets/pizza.png",
    "assets/burger.png",
    "assets/noodles.png",
    "assets/desserts.png",
  ];

  const Homepage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello $name!",
        style: GoogleFonts.aclonica(),
        ),
      ),
      body: Column(
        children: [
          Text("Hello Flutter,Hello World!!!"),
          Text("Popular Dishes"),
          Expanded(
            child: ListView.builder(
                itemCount : foodNames.length,
                itemBuilder: (context, index){
                  return ListTile(
                    leading : Icon(Icons.restaurant),
                    title: Text(foodNames[index]),
                    subtitle : Text(prices[index]),
                  );
                }
            ),
          ),
          SizedBox(
            height: 250,
            child: GridView.builder(
              //physics: const NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        categoryImages[index],
                        height: 90,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        categories[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}