import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/appointment.dart';

class information_kalyan extends StatefulWidget {
  const information_kalyan({super.key});

  @override
  State<information_kalyan> createState() => _information_kalyanState();
}

class _information_kalyanState extends State<information_kalyan> {
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
                  'assets/kalyan.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Text(
                    'Aayush Multispeciality Hospital - Emergency & Critical Hospital, Kalyan',
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
                      'Shopping Complex, Building No. E2, 2nd\n & 3rd Floor, Radha Nagar, Khadakpada,\n Kalyan, Maharashtra 421301',
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
                      '09967008900',
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
                  'Our Infrastructure',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/t1.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/t2.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/t3.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/t4.png'),
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
