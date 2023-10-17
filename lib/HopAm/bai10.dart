import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai10 extends StatelessWidget {
  const bai10({super.key});

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
          'Là anh - Phạm Lịch',
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
                      "[D]Cùng bên nhau mai sau là điều ước muốn lớn nhất\n[A]Bàn tay anh đưa ra tựa là nắng ấm lấp lánh\n[Bm]Này không gian bao la thuộc về cho riêng hai ta\n[G]Cho tình yêu trăm năm nở hoa biết bao giấc mơ ngọt ngào\n\n \n[D]Đã từng khóc xuyên qua đêm tỉnh mộng gối đã ướt đẫm\n[A]Chợt anh như hè qua ngập tràn ấm áp nắng sớm\n\n \n[Bm]Dù hai ta già đi và dù hai ta già đi \n[G]vẫn còn đây bóng dáng ngày ấy \nmột điều xa xưa ta thề nguyện qua rồi\n\n[D]Cùng đi cùng đi ngàn năm về sau mình vẫn có [A]nhau\nTô màu lên trải hoa tình yêu chúng [Bm]mình\nĐập tan Màn sương mù kia còn vương [G] \nvấn không buông bàn tay đắm đuối đắm đuối mê say\n\n \n[D]Là anh là anh cùng em vượt qua màn đêm tối [A]kia\nKiên cường khi đạp qua từng con sóng [Bm]xô\nNgoài khơi biển xanh trời cao này rộng lớn\n[G]phiêu du cùng nhau bỏ lại đau đớn phía [D]sau\n\n",
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
