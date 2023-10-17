import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai3 extends StatelessWidget {
  const bai3({super.key});

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
          'Anh sẽ đến cùng cơn mưa - Grey D',
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
                    Text(" [C], ", style: CustomTextStyle.nameOfTextStyle),
                    Text("không capo ", style: CustomTextStyle.nameOfTextStyle)
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "\nĐoạn chorus cuối lên nửa tông, có thể sử dụng capo 1 và đánh tông C",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "\n[C]Chắc em còn buồn lắm\nTừ ngày tôi đi người [Am]chẳng nói năng câu gì\n[F]Đôi bài ca gửi đến cuộc đời\nCũng không bằng [G]đôi lời em nói ra\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[C]Chắc em còn đau lắm\nGục đầu trên vai rồi [Am]nước mắt rơi đôi dòng\nVà [F]nước mắt cứ thế [G]lang thang đi dọc nhân gian [C]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Này người yêu [Am]ơi sẽ có những hôm [Em]trái gió trở trời [F]\nHãy mặc [G]thật ấm [C]\nĐường về [Am]khuya ngoại ô sớm vãn [Em]ánh đèn\nKhi sương lên [F]em hãy về nhà sớm [G]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Dù rằng anh biết [Am]cũng có những khi [Em]em khóc nấc không thành lời [F]\nLúc nhớ đến [G]kỉ niệm xưa [C]\nHãy cứ [Am]khóc thật to nếu [Em]em thấy buồn\nTrong cơn [F]mơ rồi ngày kia tới [G]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Vào một ngày mưa rơi thành [C]phố lấp lánh ánh sáng của cầu vồng [E7]\nVà đoàn tàu phương xa về [F]ghé đến phía trước bến tàu bềnh bồng [G]\nRồi tôi sẽ [Em]bước đến, sẽ bước đến bên [A7]người tôi yêu\nTặng em câu [Dm7]hát xua hết đìu hiu [G]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Vào một ngày mưa rơi thành [C]phố lấp lánh ánh sáng của cầu vồng [E7]\nVà đoàn tàu phương xa về [F]ghé đến phía trước lúc trời hừng đông [G]\nRồi ta bên [Em]nhau, bên nhau nhảy múa [A7]\nNhư là mơ\nNhư là mơ\nNhư là mơ\n[Dm7]Hãy nhớ rằng anh [G]sẽ đến cùng cơn mưa [C]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[F]Khi nỗi [G]buồn qua đi nắng [Em]về\nThật mong em hãy [A7]quên câu thề\nTìm [Dm7]hạnh phúc mới cùng cuộc sống mới em hỡi [G] [G#]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Vào một ngày mưa rơi thành [C#]phố lấp lánh ánh sáng của cầu vồng [F7]\nVà đoàn tàu phương xa về [F#]ghé đến phía trước bến tàu bềnh bồng [G#\nRồi tôi sẽ [Fm]bước đến\nSẽ bước đến bên [B7]em\nTặng em câu [D#m7]hát xua hết đìu hiu [G#]\n\n\nVào một ngày mưa rơi thành [C#]phố lấp lánh ánh sáng của cầu vồng [F7]\nVà đoàn tàu phương xa về [F#]ghé đến phía trước lúc trời hừng đông [G#]\nRồi ta bên [Fm]nhau, bên nhau nhảy múa [B7]\nNhư là mơ\nNhư là mơ\nNhư là mơ\n[D#m7]Em hãy nhớ, [G#]anh sẽ đến cùng cơn mưa [C#]\n[D#m7]Hãy nhớ rằng, [G#]anh sẽ đến cùng cơn mưa [C#]\n\n",
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
