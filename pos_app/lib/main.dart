import 'package:flutter/material.dart';
import 'package:pos_app/screens/home_screen.dart';

import 'constants.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        primaryColor: myprimercolor,
        primarySwatch: myprimercolor,
      ),
      // initialRoute: '/',
      routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/order/profile': (context) => const ProfileScreen(),
      },
      // onTap: () =>  Navigator.pushNamed(context, '/order/profile'),
      home: LoginScreen(),
    );
  }
}

