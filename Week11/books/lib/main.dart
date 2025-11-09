import 'dart:async';
import 'package:async/async.dart';
import 'package:books/navigation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'geolocation.dart';
import 'navigation_first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation First Screen Marsya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  Future handleError() async {
    try {
      await returnError();
    } catch (error) {
      setState(() {
        result = error.toString();
      });
    } finally {
      print('Complete');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Dialog Screen Marsya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}
