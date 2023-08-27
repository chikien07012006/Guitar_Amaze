import 'package:flutter/material.dart';

class tuna extends StatefulWidget {
  const tuna({super.key});

  @override
  State<tuna> createState() => tunaState();
}

class tunaState extends State<tuna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tuna'),
      ),
      body: Text('okela'),
    );
  }
}
