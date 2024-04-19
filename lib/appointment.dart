import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/home_page.dart';

class appointment_screen extends StatefulWidget {
  const appointment_screen({super.key});

  @override
  State<appointment_screen> createState() => _appointment_screenState();
}

class _appointment_screenState extends State<appointment_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(172, 122, 220, 199),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 60),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 30, 60, 0),
                      child: Text(
                        'Book Appointment ',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 350,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF1F9E88)),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              label: Text('Enter Full Name :  '),
                            ),
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontFamily: 'Inria Serif',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 350,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF1F9E88)),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              label: Text('Enter Phone Number :  '),
                            ),
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontFamily: 'Inria Serif',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 350,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF1F9E88)),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              label: Text('Enter Email Address :  '),
                            ),
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontFamily: 'Inria Serif',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 350,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF1F9E88)),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              label: Text('Appointment Date:  '),
                            ),
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontFamily: 'Inria Serif',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 30, 5),
                      child: Text(
                        'Address Details ',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 5, 10, 5),
                          child: Container(
                            width: 170,
                            height: 70,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF1F9E88)),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 15, 10),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  label: Text('Enter Area : '),
                                ),
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                  fontFamily: 'Inria Serif',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                          child: Container(
                            width: 165,
                            height: 70,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF1F9E88)),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 15, 10),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  label: Text('City :  '),
                                ),
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                  fontFamily: 'Inria Serif',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 5, 10, 5),
                          child: Container(
                            width: 170,
                            height: 70,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF1F9E88)),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 10, 10),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  label: Text('Enter State : '),
                                ),
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                  fontFamily: 'Inria Serif',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                          child: Container(
                            width: 165,
                            height: 70,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF1F9E88)),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 15, 10),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  label: Text('Postal Code :  '),
                                ),
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                  fontFamily: 'Inria Serif',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: 200,
                      height: 50,
                      color: Color.fromARGB(172, 122, 220, 199),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text('Congratulations !!!'),
                              content: const Text(
                                  'Your Appointment is successfully submitted'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      new MaterialPageRoute(
                                        builder: (context) => home_screen(),
                                      ),
                                    );
                                  },
                                  child: Text('Okay'),
                                )
                              ],
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
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
