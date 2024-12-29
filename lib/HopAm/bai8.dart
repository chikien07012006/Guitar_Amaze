import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai8 extends StatelessWidget {
  const bai8({super.key});

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
          'My only one - Sebastian Yatra ft. Isabela Moner',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  children: [
                    Text("Tone", style: CustomTextStyle.nameOfTextStyle),
                    Text(" [F#] ", style: CustomTextStyle.nameOfTextStyle)
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("\nCapo 1\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Verse 1:\n[F]I remember when I met you, I didn't want to [Dm]fall\nI thought my hands were [Bb]shaking 'cause you [C]looked so [F]beautiful\n[F]I remember when you kissed me, I knew you were[Dm] the one\nAnd oh my hands were [Bb]shaking when you played [C]my favorite [F]song\n\n\nBridge:\n[F]I don't know [Dm]why\nBut [Bb]every time I look into your [F]eyes\nI[C] see a thousand falling [Dm]shooting stars and yes [Bb]I love you\nI can't believe that [F]every night you're by my [C]side\n\n\nChorus:\nPromise I'll [F]stay here 'till the [C]morning\nAnd [Dm]pick you up when you're [Bb]falling\nWhen the rain gets [F]rough, when you've had [C]enough\nI'll just sweep[Dm] you off your feet and fix you [Bb]with my love\nMy only [F]one [C]\nMy [F]only [Dm]one [Bb]\n\n\nVerse 2:\n[F]Tell me how you do it I can [C]barely breathe\nwith the smile you get You get the [Gm]best of me\nand all I really want is to give you [Bb]all of me\n[F]Tell me how you do it, how you [C]bring me back\nYou bring me back to life then make[F] my heartbeat stop\n[Gm]I can't take[Bb] it\n\n\nBridge:\n[F]I don't know [Dm]why\nBut [Bb]every time I look into your [F]eyes\nI[C] see a thousand falling [Dm]shooting stars and yes [Bb]I love you\nI can't believe that [F]every night you're by my [C]side\n\n\nChorus:\nVoy a [F]cuidarte por las [C]noches\nVoy a [Dm]amarte sin [Bb]reproches\nTe voy a [F]extrañar en la [C]tempestad\nY aunque existan mil [Dm]razones para [Bb]renunciar\nPromise I'll [F]stay here 'till the [C]morning\nAnd [Dm]pick you up when you're [Bb]falling\nWhen the rain gets [F]rough, when you've had [C]enough\nI'll just sweep[Dm] you off your feet and fix you [Bb]with my love\nMy only [F]one,[C] there's no one else\nMy [F]only [Dm]one,[Bb] there's no one else\n\n\nOutro:\n[Bb]You are my only [F]one [C]\nIt's just there's no one else, ouh, uoh\n[Dm]My only [F] [Dm]one [F]\nMy [Bb]only\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=6Wm-NK8n2_s&ab_channel=TheBengBoy'); // Replace the URL with your desired link
                  },
                  child: const Text(
                    'Guitar Instruction',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextStyle {
  static const TextStyle nameOfTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}

_launchURL(String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
