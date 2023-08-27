import 'package:flutter/material.dart';

class virguitar extends StatefulWidget {
  const virguitar({super.key});

  @override
  State<virguitar> createState() => virguitarState();
}

class virguitarState extends State<virguitar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Virtual guitar'),
      ),
      body: Text('okela'),
    );
  }
}
