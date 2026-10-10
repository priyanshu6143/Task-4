import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Foodie!",
        style: GoogleFonts.aclonica(),
        ),
      ),
      body: const Center(
        child: Text("Hello Flutter,Hello World!!!"),
      ),
    );
  }
}