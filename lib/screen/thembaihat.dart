import 'package:flutter/material.dart';
import 'hopamscreen.dart';

class thembaihat extends StatefulWidget {
  const thembaihat({super.key});

  @override
  State<thembaihat> createState() => _thembaihatState();
}

class _thembaihatState extends State<thembaihat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(27, 20, 10, 0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Enter your song name and the author (*)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: TextField(
              onSubmitted: (value) => searchterms.add(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter your song name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(27, 20, 10, 0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Detail your song (*)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: SizedBox(
              height: 300,
              child: TextField(
                maxLines: 100,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Detail your song',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color.fromRGBO(234, 218, 133, 10), // foreground
                  ),
                  child: const Text(
                    'Done',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
