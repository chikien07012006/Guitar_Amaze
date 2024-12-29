import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: camel_case_types
class tuna extends StatelessWidget {
  const tuna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(234, 218, 133, 10),
        centerTitle: true,
        leading: IconButton(
          iconSize: 30,
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Guitar Tuner',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: GuitarTunerPage(),
    );
  }
}

class GuitarTunerPage extends StatefulWidget {
  @override
  _GuitarTunerPageState createState() => _GuitarTunerPageState();
}

class _GuitarTunerPageState extends State<GuitarTunerPage> {
  static final AudioPlayer _audioPlayer = AudioPlayer();
  String _tuningStatus = '';

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void playSound(String note) async {
    _audioPlayer.play(UrlSource('assets/notes/$note.wav'));
  }

  void tuneString(String note) {
    setState(() {
      _tuningStatus = 'Tuning $note...';
    });
    playSound(note);
    // Add your tuning logic here (e.g., listening to the microphone input and determining the closest note)
    // You can use packages like 'microphone' or 'audioplayers' to implement this functionality.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/image/bgr.jpg",
        ),
        fit: BoxFit.cover,
      )),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 100,
            child: Text(
              _tuningStatus,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(children: [
                    TuningButton(
                      note: 'D',
                      onPressed: () => tuneString('D'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TuningButton(
                      note: 'A',
                      onPressed: () => tuneString('A'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TuningButton(
                      note: 'E6',
                      onPressed: () => tuneString('E6'),
                    ),
                  ]),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(children: [
                    TuningButton(
                      note: 'G',
                      onPressed: () => tuneString('G'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TuningButton(
                      note: 'B',
                      onPressed: () => tuneString('B'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TuningButton(
                      note: 'E1',
                      onPressed: () => tuneString('E1'),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TuningButton extends StatelessWidget {
  final String note;
  final VoidCallback onPressed;

  TuningButton({required this.note, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(234, 218, 133, 10),
          foregroundColor: Colors.black,
        ),
        child: Text(
          note,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

/*child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TuningButton(
                    note: 'E',
                    onPressed: () => tuneString('E'),
                  ),
                  TuningButton(
                    note: 'A',
                    onPressed: () => tuneString('A'),
                  ),
                  TuningButton(
                    note: 'D',
                    onPressed: () => tuneString('D'),
                  ),
                  TuningButton(
                    note: 'G',
                    onPressed: () => tuneString('G'),
                  ),
                  TuningButton(
                    note: 'B',
                    onPressed: () => tuneString('B'),
                  ),
                  TuningButton(
                    note: 'E',
                    onPressed: () => tuneString('E'),
                  ),
                ],
              ),
            ),*/