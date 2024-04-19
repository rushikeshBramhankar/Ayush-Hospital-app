import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/appointment.dart';

class information_screen extends StatefulWidget {
  const information_screen({super.key});

  @override
  State<information_screen> createState() => _information_screenState();
}

class _information_screenState extends State<information_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5),
              Container(
                width: 426,
                height: 300,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Image.asset(
                  'assets/logo.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Text(
                    'Ayush Clinic, CBD Belapur',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.location_on, size: 35),
                    ),
                  ),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                    child: Text(
                      'C-5/7, Sector 3, CBD Belapur, Navi Mumbai,\n Maharashtra 400614',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.phone, size: 35),
                    ),
                  ),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                    child: Text(
                      '09820006082',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'WHO WE ARE',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'Facilities at Aayush Hospital in CBD Belapur are designed considering the patient’s comfort. Rooms include soothing colors with adequate use of natural light to keep the patient cozy. The Twin-sharing and special rooms are equipped with flat-screen televisions and a separate Air Conditioner. The Feel-At-Home comfort adds to the doctor’s effort and promises a quick recovery.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'WHAT AYUSH OFFER TO YOU',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/1.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/2.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/3.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/4.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/5.png'),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                width: 250,
                color: Colors.cyan,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const appointment_screen(),
                      ),
                    );
                  },
                  child: Text(
                    'Book Appointment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
