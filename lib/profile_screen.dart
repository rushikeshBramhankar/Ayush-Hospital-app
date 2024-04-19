import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/home_page.dart';
import 'package:flutter_ayush_hospital_duplicate/search_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/welcome_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({super.key});

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9FBF8),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFF1A8F80),
        title: Text(
          'Profile',
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
      body: Column(
        children: <Widget>[
          Container(
            width: 450,
            height: 200,
            decoration: const BoxDecoration(
              color: Color(0xFF1A8F80),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                // profile photo
                Container(
                  width: 130,
                  height: 130,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/rushi_photo1.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 25,
                      color: Color(0xFFE9FBF8),
                    ),
                    alignment: Alignment.bottomRight,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          // name box container
          Container(
            width: 361,
            height: 87,
            decoration: ShapeDecoration(
              color: const Color(0xFFBEEBE3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Icon(
                    Icons.person,
                    color: Color(0xFF1A8F80),
                    size: 40,
                  ),
                ),
                Text(
                  '  Rushikesh Bramhankar',
                  style: TextStyle(
                    color: Color.fromARGB(244, 4, 75, 49),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // contact box

          Container(
            width: 361,
            height: 87,
            decoration: ShapeDecoration(
              color: Color(0xFFBEEBE3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Icon(
                    Icons.phone,
                    color: Color(0xFF1A8F80),
                    size: 40,
                  ),
                ),
                Text(
                  '  +91 8010129969',
                  style: TextStyle(
                    color: Color.fromARGB(244, 4, 75, 49),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),

          // email address

          const SizedBox(height: 30),
          Container(
            width: 361,
            height: 87,
            decoration: ShapeDecoration(
              color: const Color(0xFFBEEBE3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Icon(
                    Icons.mail,
                    color: Color(0xFF1A8F80),
                    size: 40,
                  ),
                ),
                Text(
                  '    rushikeshbramhankar2003@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(244, 4, 75, 49),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // saved clinics

          Container(
            width: 361,
            height: 87,
            decoration: ShapeDecoration(
              color: const Color(0xFFBEEBE3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Icon(
                    Icons.bookmark,
                    color: Color(0xFF1A8F80),
                    size: 40,
                  ),
                ),
                Text(
                  '  Saved clinics',
                  style: TextStyle(
                    color: Color.fromARGB(244, 4, 75, 49),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const home_screen()),
                      );
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
                            builder: (context) => const search_screen()),
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
                      print('settings loading!');
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
                      print('You are on the profile screen');
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
    );
  }
}
