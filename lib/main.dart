import 'package:flutter/material.dart';
import 'package:music_app/screen/homescreen.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(length: 10, child: homescreen()));
  }
}
