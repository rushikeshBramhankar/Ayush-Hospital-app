import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/appointment.dart';
import 'package:flutter_ayush_hospital_duplicate/drawer.dart';
import 'package:flutter_ayush_hospital_duplicate/google%20maps.dart';
import 'package:flutter_ayush_hospital_duplicate/information.dart';
import 'package:flutter_ayush_hospital_duplicate/information_airoli.dart';
import 'package:flutter_ayush_hospital_duplicate/information_kharghar.dart';
import 'package:flutter_ayush_hospital_duplicate/profile_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/search_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/home_page.dart';
import 'package:flutter_ayush_hospital_duplicate/register_page.dart';
import 'package:flutter_ayush_hospital_duplicate/splash_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/home_page.dart';
import 'package:flutter_ayush_hospital_duplicate/welcome_screen.dart';
import 'package:flutter_ayush_hospital_duplicate/login screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcome_screen(),
    ),
  );
}
