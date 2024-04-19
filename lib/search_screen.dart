import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/home_page.dart';
import 'package:flutter_ayush_hospital_duplicate/profile_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/welcome_screen.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9FBF8),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFF1A8F80),
        title: Text(
          'Clinics',
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
            const SizedBox(height: 25),
            Container(
              child: Row(
                children: <Widget>[
                  Center(
                    child: Text(
                      '       Search...',
                      style: TextStyle(
                        color: Color(0xFF605F5F),
                        fontSize: 22,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(width: 190),
                  IconButton(
                    onPressed: () {
                      print('search as per your choice');
                    },
                    icon: Icon(Icons.search),
                    iconSize: 30,
                  ),
                ],
              ),
              width: 374,
              height: 55,
              decoration: ShapeDecoration(
                color: Color(0xFFBEEBE3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(
              width: 200,
              height: 50,
              alignment: Alignment.centerLeft,
              decoration: ShapeDecoration(
                color: Color(0xFF7DC2B6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                '          Recents',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Neuton',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: 1.20,
                ),
              ),
            ),
            SizedBox(height: 45),
            Container(
              width: 353,
              height: 107,
              decoration: ShapeDecoration(
                color: Color(0xFFBEEBE3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'Ayush Hospital, Belapur',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 1.20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Timings : Monday - Sunday    10 am - 10 pm',
                    style: TextStyle(
                      color: Color(0xFF444343),
                      fontSize: 15,
                      fontFamily: 'Neuton',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  ),
                  Text(
                    'Location : CBD Belapur',
                    style: TextStyle(
                      color: Color(0xFF444343),
                      fontSize: 15,
                      fontFamily: 'Neuton',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 353,
              height: 107,
              decoration: ShapeDecoration(
                color: Color(0xFFBEEBE3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'Ayush Hospital, Kharghar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 1.20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Timings : Monday - Sunday    10 am - 10 pm',
                    style: TextStyle(
                      color: Color(0xFF444343),
                      fontSize: 15,
                      fontFamily: 'Neuton',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  ),
                  Text(
                    'Location : Kharghar',
                    style: TextStyle(
                      color: Color(0xFF444343),
                      fontSize: 15,
                      fontFamily: 'Neuton',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  ),
                ],
              ),
            ),

            // 3rd container

            SizedBox(height: 25),
            Container(
              width: 353,
              height: 107,
              decoration: ShapeDecoration(
                color: Color(0xFFBEEBE3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'Ayush Hospital, Kalyan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 1.20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Timings : Monday - Sunday    10 am - 10 pm',
                    style: TextStyle(
                      color: Color(0xFF444343),
                      fontSize: 15,
                      fontFamily: 'Neuton',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  ),
                  Text(
                    'Location : Kalyan',
                    style: TextStyle(
                      color: Color(0xFF444343),
                      fontSize: 15,
                      fontFamily: 'Neuton',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  ),
                ],
              ),
            ),

            // last row of home, search, setting and profle

            SizedBox(height: 135),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 390,
                height: 69,
                decoration: ShapeDecoration(
                  color: Color(0xFF71B4A9),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home_screen(),
                            ),
                          );
                        },
                        icon: Icon(
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
                          print('You are on the searching');
                        },
                        icon: Icon(
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
                          print('settings loading!');
                        },
                        icon: Icon(
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
                                builder: (context) => profile_screen()),
                          );
                        },
                        icon: Icon(
                          Icons.person,
                          size: 40,
                          color: Color.fromARGB(255, 1, 123, 107),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
