import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai5 extends StatelessWidget {
  const bai5({super.key});

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
          'Thắc mắc - Thịnh Suy',
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
                    Text(" [C] ", style: CustomTextStyle.nameOfTextStyle)
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("\nCapo 2\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[C]Sau chi tay em thấy sao về cuộc đời [E7]em\n[Am]Em cô đơn hay thích hơn đã kể ai [F]xem [Fm]\n\n\n[C]Sau chia tay anh thích trong phòng ngồi chơi [E7]game\n[Am]Anh không đau không khóc lâu cũng chẳng say [F]mèm [Fm]\n\n\n[Am]Chỉ là chút thắc [E7]mắc theo anh rối [F]bời [Fm]-[E7]\n[Am]Chỉ là chút [E7]khói bên trong mặt [F]trời [Fm]\n\n\nĐK:\nCó lẽ em đã [C]khóc rất nhiều\nCó lẽ anh chẳng [E7]cảm nhận được bao nhiêu\nĐiều [Am]đó anh không thể [F]biết em [Fm]à\n\n\nCó lẽ em chẳng [C]khóc chút nào\nCó lẽ em chẳng [E7]quan tâm anh ra sao\nĐiều [Am]đó anh không thể [F]biết em [Fm]à\n\n\nVì giờ mình đã [C]xa\nVì giờ mình đã [E7]xa\nVì giờ mình đã [Am]xa\nVì giờ mình đã [F]xa [Fm]\n\n\n[C]Sau chia tay không thấy em chụp hình đăng [E7]face\nMột [Am]ngày anh thử tìm kiếm, tên [F]em đã không xuất [Fm]hiện\n\n\n[Am]Vẫn là chút thắc [E7]mắc theo anh rối [F]bời [Fm]\n[Am]Vẫn là chút [E7]khói bên trong mặt [F]trời [Fm]\n\n\nĐK:\nCó lẽ em đã [C]khóc rất nhiều\nCó lẽ anh chẳng [E7]cảm nhận được bao nhiêu\nĐiều [Am]đó anh không thể [F]biết em [Fm]à\n\n\nCó lẽ em chẳng [C]khóc chút nào\nCó lẽ em chẳng [E7]quan tâm anh ra sao\nĐiều [Am]đó anh không thể [F]biết em [Fm]à\n\n\nVì giờ mình đã [C]xa\nVì giờ mình đã [E7]xa\nVì giờ mình đã [Am]xa\nVì giờ mình đã [F]xa [Fm]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.tiktok.com/@guitarinstruction/video/7216873951564188954'); // Replace the URL with your desired link
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
