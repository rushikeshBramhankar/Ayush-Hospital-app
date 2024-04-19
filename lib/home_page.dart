import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/drawer.dart';
import 'package:flutter_ayush_hospital_duplicate/google%20maps.dart';
import 'package:flutter_ayush_hospital_duplicate/information.dart';
import 'package:flutter_ayush_hospital_duplicate/information_airoli.dart';
import 'package:flutter_ayush_hospital_duplicate/information_kharghar.dart';
import 'package:flutter_ayush_hospital_duplicate/profile_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/search_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/setting.dart';
import 'package:flutter_ayush_hospital_duplicate/welcome_screen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9FBF8),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFF1A8F80),
        title: Text(
          'Search By Location',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Neuton',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFE9FBF8),
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(50, 90, 50, 0),
                child: Container(
                  height: 130,
                  width: 60,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/rushi_photo1.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profile_screen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Center(
                child: const Text(
                  'rushikesh_bramhankar',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 50),
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                height: 50,
                width: 80,
                child: Center(
                  child: const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profile_screen(),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              title: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: const Text(
                    'Appointment Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profile_screen(),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              title: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const welcome_screen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Container(
              width: 426,
              height: 410,
              decoration: ShapeDecoration(
                color: const Color(0xFFBDEAE3),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF31887C)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: MapSample(),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const information_screen(),
                  ),
                );
              },
              child: Container(
                width: 378,
                height: 75,
                decoration: ShapeDecoration(
                  color: const Color(0xFFBDEAE3),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF31887C)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Icon(Icons.looks_one_rounded,
                          color: Color(0xFF1A8F80)),
                    ),
                    Text(
                      '  Ayush Clinic, CBD Belapur',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 25),
                    Text(
                      '2.2 KM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const information_kharghar(),
                  ),
                );
              },
              child: Container(
                width: 378,
                height: 75,
                decoration: ShapeDecoration(
                  color: const Color(0xFFBDEAE3),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF31887C)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Icon(Icons.looks_two, color: Color(0xFF1A8F80)),
                    ),
                    Text(
                      '  Ayush Hospital, Kharghar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      ' 5.5 KM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 378,
              height: 75,
              decoration: ShapeDecoration(
                color: const Color(0xFFBDEAE3),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF31887C)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const information_kalyan(),
                    ),
                  );
                },
                child: const Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 15, 0),
                      child:
                          Icon(Icons.looks_3_rounded, color: Color(0xFF1A8F80)),
                    ),
                    Text(
                      '  Ayush Hospital, Kalyan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      '27.4 KM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 390,
              height: 69,
              decoration: ShapeDecoration(
                color: const Color(0xFF71B4A9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: IconButton(
                      onPressed: () {
                        print('Home page is loading!');
                      },
                      icon: const Icon(
                        Icons.home,
                        size: 40,
                        color: Color.fromARGB(255, 1, 123, 107),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const search_screen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 40,
                        color: Color.fromARGB(255, 1, 123, 107),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: IconButton(
                      onPressed: () {
                        openSettings();
                      },
                      icon: const Icon(
                        Icons.settings,
                        size: 40,
                        color: Color.fromARGB(255, 1, 123, 107),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const profile_screen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.person,
                        size: 40,
                        color: Color.fromARGB(255, 1, 123, 107),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
