import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_service.dart';
import 'src/Pages/HomePage/HomePage.dart';
import 'src/Pages/HomePage/FirstPage.dart';
import 'src/Pages/HomePage/SecondPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAhv3jgeAQgoCxuIVw5vyMhnkQtbO1rL4c",
  authDomain: "flutterapp-97e8a.firebaseapp.com",
  projectId: "flutterapp-97e8a",
  storageBucket: "flutterapp-97e8a.appspot.com",
  messagingSenderId: "77524801154",
  appId: "1:77524801154:web:05c0cde77874747eac069b",
  measurementId: "G-VCMM31S0XG"
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',  
      routes: {
        '/': (context) => const HomePage(),
        '/firstPage': (context) => const FirstPage(),
        '/SecondPage': (context) => const SecondPage(),
      },
    );
  }
}
