import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai4 extends StatelessWidget {
  const bai4({super.key});

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
          'Fifty Fifty - Cupid',
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
                    Text(" [Em7], ", style: CustomTextStyle.nameOfTextStyle),
                    Text("không capo ", style: CustomTextStyle.nameOfTextStyle)
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "\n[Em7]A hopeless [A7]romantic all my [D]life\nSurrounded by [Bm7]couples all the time[Em7]\nI guess I should [A7]take it as a sign[D]\n[Bm7](Oh why, oh why, oh why, oh why?)\n\n\nI'm feeling [Em7]lonely (Lonely)\nOh, I [A7]wish I'd find a \nlover that could [D]hold me (Hold me)\nNow, I'm [Bm7]crying in my room\n[Em7]So skeptical of love \n[A7](Say what you say, but I want it more)\nBut still, I want it [D]more, more, more\n\n \n[Bm7]I gave a second chance to [Em7]Cupid\n[A7]But now, I'm left here feeling [D]stupid[Bm7]\nOh, the way he [Em7]makes me feel\nThat [A7]love isn't real\n[D]Cupid is so dumb[Bm7]\n\n \n[Em7]I look for his [A7]arrows everyday[D]\nI guess he got [Bm7]lost or flew away\n[Em7]Waiting around is a waste (Waste)\n[A7]Been counting the days since November\n[D]Is loving as good as they say?[Bm7]\n[Em7]Now I'm so lonely (Lonely)\nOh, I [A7]wish I'd find a lover\nthat could [D]hold me (Hold me)\nNow I'm [Bm7]crying in my room\n[Em7]So skeptical of love \n[A7](Say what you say, but I want it more)\nBut still, I want it [D]more, more, more\n[Bm7]I gave a second chance to [Em7]Cupid\n[A7]But now, I'm left here feeling [D]stupid[Bm7]\nOh, the way he [Em7]makes me feel\nThat [A7]love isn't real\n[D]Cupid is so [Bm7]dumb\n(Cupid is so dumb)\n[Em7]Hopeless [A7]girl is seeking\n[D]Someone who will share [Bm7]this feeling\n[Em7]I'm a fool[A7]\n[D]A fool for love, [Bm7]a fool for love\n[Bm7]I gave a second chance to [Em7]Cupid\n[A7]But now, I'm left here feeling [D]stupid[Bm7]\nOh, the way he [Em7]makes me feel\nThat [A7]love isn't real\n[D]Cupid is so [Bm7]dumb\nI gave a second chance to [Em7]Cupid\n(Hopeless girl is seeking someone)\n[A7]But now, I'm left here feeling [D]stupid[Bm7]\n(Who will share this feeling)\nOh, the way he [Em7]makes me feel\nThat [A7]love isn't real\n(I'm a fool)\n[D]Cupid is so [Bm7]dumb\n(A fool for love, a fool for love)\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.tiktok.com/@guitarinstruction/video/7247499545083432197'); // Replace the URL with your desired link
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
