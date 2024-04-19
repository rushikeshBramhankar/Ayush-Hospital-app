import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/appointment.dart';

class information_kharghar extends StatefulWidget {
  const information_kharghar({super.key});

  @override
  State<information_kharghar> createState() => _information_khargharState();
}

class _information_khargharState extends State<information_kharghar> {
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
                height: 450,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Image.asset(
                  'assets/k1.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Text(
                    'Ayush Hospital, Kharghar',
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
                      'Plot no 112, behind Canara Bank, Owe \nVillage, Sector 30, Kharghar, Navi Mumbai,\n Maharashtra 410210',
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
                      '09324808732',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'Our Mission',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'To impart patient centric quality health services at affordable rate using cutting edge technology with human touch.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'Our Vision',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'Provide quality healthcare to all, Achieve professional excellence in health care, Adhere to national & global standard in healthcare, Ensure care with integrity and ethics.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Text(
                  'Our Values',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Image.asset('assets/k2.png'),
              SizedBox(height: 15),
              Image.asset('assets/k3.png'),
              SizedBox(height: 15),
              Image.asset('assets/k4.png'),
              SizedBox(height: 15),
              Image.asset('assets/k5.png'),
              SizedBox(height: 15),
              Image.asset('assets/k6.png'),
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
