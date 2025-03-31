import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Aquarium',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AquariumScreen(),
    );
  }
}

class AquariumScreen extends StatefulWidget {
  const AquariumScreen({super.key});

  @override
  AquariumScreenState createState() => AquariumScreenState();
}

class AquariumScreenState extends State<AquariumScreen> with SingleTickerProviderStateMixin{
late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Virtual Aquarium'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue[50],
          width: 300,
          height: 300,
          child: const Center(child: Text('Aquarium')),
        ),
      ),
    );
  }
}
