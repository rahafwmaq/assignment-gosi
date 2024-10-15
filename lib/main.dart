import 'package:assignment_gosi/views/navbar/nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAGgQNan7VahJiuA3h4nTLtbBRhGGhmNyA",
            authDomain: "gosi-assignment.firebaseapp.com",
            projectId: "gosi-assignment",
            storageBucket: "gosi-assignment.appspot.com",
            messagingSenderId: "188951979015",
            appId: "1:188951979015:web:eee752dbac2922c0a076a2",
            measurementId: "G-R487R0R3TG"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'EuclidSquare'),
      debugShowCheckedModeBanner: false,
      home: const NavBar(),
    );
  }
}
