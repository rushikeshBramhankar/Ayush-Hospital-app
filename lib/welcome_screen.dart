import 'package:flutter_ayush_hospital_duplicate/login screen.dart';
import 'package:flutter_ayush_hospital_duplicate/register_page.dart';
import 'package:flutter/material.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({super.key});

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
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
              height: 150,
              width: 150,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Ayushiva',
            style: TextStyle(
              color: Color(0xFF1F9E88),
              fontSize: 35,
              fontFamily: 'Inria Serif',
            ),
          ),
          const SizedBox(height: 35),
          const Center(
            child: Text(
              'Let’s get started!',
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontFamily: 'Inria Serif',
              ),
            ),
          ),
          const SizedBox(height: 35),
          const Center(
            child: Text(
              '        Your Gateway To Holistic Wellness.\n Begin Your Journey to holistic health with us.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),

          const SizedBox(height: 70),

//login button
          Container(
            width: 200,
            height: 48,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const login_screen()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Inria Serif',
                  fontWeight: FontWeight.w400,
                  height: 1.00,
                  letterSpacing: 1.44,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1F9E88),
              ),
            ),
          ),
          SizedBox(height: 30),

//sign up button

          Container(
            width: 200,
            height: 48,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const register_page()),
                );
              },
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Inria Serif',
                  fontWeight: FontWeight.w400,
                  height: 1.00,
                  letterSpacing: 1.44,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1F9E88),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
