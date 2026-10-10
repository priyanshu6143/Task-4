import 'package:demo/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200] ,
          title : Text (
            "Fork and Food",
            style: GoogleFonts.courgette(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0XFF092328),
            ),
          ),
          centerTitle: true,
        ),
        body:
        Center(
          child: Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[50],
              ),

              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/img_1.png"),
                    radius: 100,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person) ,
                        suffixIconColor: Colors.green[900],
                        hintText: "Name",
                        focusColor: Colors.lightBlueAccent[900],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.redAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.redAccent ),
                        )
                    ),
                    cursorColor: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                          icon: Icon(
                          isPasswordVisible ? Icons.visibility : Icons.visibility_off
                        )
                    ) ,
                        suffixIconColor: Colors.green[900],
                        hintText: "Password",
                        focusColor: Colors.lightBlueAccent[900],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.redAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.redAccent ),
                        )
                    ),
                    cursorColor: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: (Colors.green[400]),
                        shadowColor: Colors.lightGreenAccent,
                    ),
                      child: Text("Login",
                        style : TextStyle(
                          color : Colors.black,
                        ),
                      ),
                  ),
                ],
              )
          ),
        )
    );
  }
}
