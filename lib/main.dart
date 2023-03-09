import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_3/firebase_options.dart';
import 'package:project_3/home/home_page.dart';
import 'package:project_3/home/restaurants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    for (final rest in Restaurant.restaurantInfo) {
      FirebaseFirestore.instance.collection('restaurant').doc(rest.restId).set(rest.toMap());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}
