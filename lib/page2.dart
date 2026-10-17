import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Homepage extends StatelessWidget {
  final String name;
  const Homepage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello $name!",
        style: GoogleFonts.aclonica(),
        ),
      ),
      body: const Center(
        child: Text("Hello Flutter,Hello World!!!"),
      ),
    );
  }
}