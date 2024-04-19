import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/welcome_screen.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9FBF8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Image(
              image: AssetImage('assets/Vector.png'),
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const welcome_screen()),
              );
            },
            child: Text(
              'Ayushiva',
              style: TextStyle(
                color: Color(0xFF1F9E88),
                fontSize: 33,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE9FBF8),
            ),
          ),
        ],
      ),
    );
  }
}
