import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai6 extends StatelessWidget {
  const bai6({super.key});

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
          'Senorita - Shawn Mendes, Camila Cabello',
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
                    Text(" [Am] ", style: CustomTextStyle.nameOfTextStyle)
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "\nBài này tông gốc là Am, nhịp 4/4\nĐánh theo bản gốc là điệu bossa nova, hoặc blue cũng được\nTheo vòng: Am - C - F - Em/E7\n(mỗi hợp âm đánh 2 lần, Em và E7 chia đôi)\nIntro: [Am]- [C]- [F]- [Em]/ [E7]\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "I love it when you [Am]call me señorita\nI wish I could [C]pretend I didn't need ya \nBut every touch is [F]ooh-la-la-la \nIt's true, la-la-la\n[Em]Ooh, I should be runnin' \n[E7]Ooh, you keep me coming for ya \n\n\nShawn Mendes:\n[Am]Late in Miami \nThe air was hot from summer rains [C]\nSweat drippin' off me\nBefore I even knew her [F]name, la-la-la \nIt felt like [Em]ooh-la-la-la, [E7]yeah no \n[Am]Sapphire and moonlight, we danced for hours in the [C]sand \nTequila sunrise, her body \nfit right in my [F]hands, ooh-la-la-la \nIt felt like [Em]ooh-la-la-la, [E7]yeah\n\n\nChorus:\nI love it when you [Am]call me señorita \nI wish I could [C]pretend I didn't need ya \nBut every touch is [F]ooh-la-la-la \nIt's true, la-la-la\n[Em]Ooh, I should be runnin' \n[E7]Ooh, you keep me coming for ya\nOoooh you know i love it when you [Am]call me señorita \nI wish it wasn’t so damn [C]hard to leave ya\nBut every touch is [F]ooh-la-la-la \nIt's true, la-la-la\n[Em]Ooh, I should be runnin' \n[E7]Ooh, you keep me coming for ya\nCamila Cabello:\n[Am]Locked in the hotel, there's\njust somethings that never [C]change \nYou say we're just friends\nBut friends don't know the way you taste, [F]la-la-la \nGod [Em]knows it's been a long time\ncoming, don't ya let me [E7]fall, ooh \n[Am]Hooked on your lips, undress me \nHooked on your tongue\n[C]Oh, I love your kisses is deadly don't [Em]stop\nChorus:\nI love it when you [Am]call me señorita \nI wish I could [C]pretend I didn't need ya \nBut every touch is [F]ooh-la-la-la \nIt's true, la-la-la\n[Em]Ooh, I should be runnin' \n[E7]Ooh, you keep me coming for ya\nOoooh you know i love it when you [Am]call me señorita \nI wish it wasn’t so damn [C]hard to leave ya\nBut every touch is [F]ooh-la-la-la \nIt's true, la-la-la\n[Em]Ooh, I should be runnin' \n[E7]Ooh, you keep me coming for ya\n\n\nOutro:\n[Am]All along I've been coming for [C]ya (For you) \nAnd I hope it means something to [F]ya\nCall my name, I'll be coming for [Em]ya \nCalling for [E7]ya \nFor ya [Am]\n[Am] [F] [C] [Em]- [E7]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.tiktok.com/@ipsaous/video/7193361774320585990?q=senorita%20guitar%20instruction&t=1697334647487'); // Replace the URL with your desired link
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
