import 'package:flutter/material.dart';
import 'package:newrepo/ProfilePage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;
String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fc.wallhere.com%2Fphotos%2F7c%2Fda%2F1500x1000_px_Aerial_View_blue_Himalayas_landscape_mist_Morning_mountains-612684.jpg!d&tbnid=0QT3aQKijvmrNM&vet=12ahUKEwjn7uzv69aCAxXm2jgGHYkGBpQQMyg1egUIARDNAQ..i&imgrefurl=https%3A%2F%2Fwallhere.com%2Fen%2Fwallpaper%2F612684&docid=AdOkmQtSTKnjsM&w=1500&h=1000&q=mountain%20background%20jpg%20images%20for%20login%20page&ved=2ahUKEwjn7uzv69aCAxXm2jgGHYkGBpQQMyg1egUIARDNAQ'),
        //     fit: BoxFit.cover,           
        //     ),
            
        // ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(5.0),
            width: 700,
            height: 500,
            decoration: BoxDecoration(
                color: Colors.green.shade100,
                border: Border.all(
                  width: 1.0,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ]),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Login Page',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 120.0, left: 100.0, right: 100.0, bottom: 40.0),
                  child: TextFormField(
                    onChanged: (v){
                      data=v;

                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 0.0, left: 100.0, right: 100.0, bottom: 40.0),
                  child: TextFormField(
                    obscureText: isVisible,
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(isVisible?Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade100,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> ProfilePage( data!)
                      ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
