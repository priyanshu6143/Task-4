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
          )
        ],
      ),
    );
  }
}