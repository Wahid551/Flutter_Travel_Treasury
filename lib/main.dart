import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:profile_ui_with_firebase/views/first_view.dart';
import 'package:profile_ui_with_firebase/views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstView(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        '/signUp': (BuildContext context) => Home(),
      },
    );
  }
}
