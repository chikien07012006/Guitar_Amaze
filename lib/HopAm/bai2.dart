import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai2 extends StatelessWidget {
  const bai2({super.key});

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
          'Lần Cuối - Ngọt',
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
                  child: const Text(
                      "\nNhìn quanh lần [C] cuối, rừng [E] thay lá ngậm [Am] ngùi",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Rừng [Gm] không báo tin [F] vui gì, chỉ [D7] cố che màn [G] mưa",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Lặng im như [C] lá, em [E] không nói một [Am] lời",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[Gm] Không khóc không [F] cười, chỉ [D7] cuốn theo chiều [G] gió đưa",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Dễ như [Dm] nuốt thật nhanh ngụm cà phê [Em] cuối",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Dễ như cách em [Dm] xua bàn tay để che tiếc [Em] nuối",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Dễ như cách em [Dm] quay lại quay lại quay lại",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Chỉ để [D7] buông lời tha thứ [G] nhân từ\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Vậy là lần cuối đi bên [C] nhau, cay đắng nhưng không [A] đau\nNếu ai cũng [Dm] mang tội thì người [Fm] mong đợi gì nơi [Em] tôi\nTiễn em tới [Am] đây thôi, phố mưa cũng [D7] đang tạnh rồi\n[G] Y như một giấc mơ [C] trôi\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Kiệm lời [C] tôi, xin [E] tránh nói thêm về [Am] tương lai\nXin [Gm] tránh nói hẹn gặp [F] lại, [D7] Tránh nói về ngày [G] mai\nVì khó như nói câu [Dm] vĩnh biệt những gì em đã [Em] mất\nKhoé mi nếu rưng [Dm] rưng nhiều khi chỉ để đã [Em] mắt\nKhó như cách em [Dm] tua lại tua lại tua lại\n[D7] Kỉ niệm trong đời tới lúc [G] ban đầu\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Vậy là lần cuối đi bên [C] nhau, cay đắng nhưng không [A] đau\nNếu ai cũng [Dm] mang tội thì người [Fm] mong đợi gì nơi [Em] tôi\nTiễn em tới [Am] đây thôi, phố mưa cũng [D7] đang tạnh rồi\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[G] Cho dù chẳng biết sẽ đi [C] đâu, cũng giống như lần [Am] đầu\nNhưng nếu em có [Dm] đoái hoài cũng đừng [Fm] ngoái lại nhìn sang [Em] tôi\nEm cứ đi tiếp [Am] thôi, lần cuối ấy cũng [Dm] qua mất rồi\n[G] Y như một giấc mơ [C] trôi\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Lần cuối ta đi bên [C] nhau, [F] lần cuối y như lần [C] đầu\n[F] Lần cuối thấy em lặng [C] thinh, lần [Fm] đầu thấy tôi vô [G] hình\nLần cuối đi bên [C] nhau, cay đắng nhưng không [A] đau\nNhưng nếu em cũng [Dm] đang vội thì còn [G] cơ hội gì cho [C] tôin\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.tiktok.com/@guitarinstruction/video/7257506132355353861?q=guitarinstruction&t=1689222730392'); // Replace the URL with your desired link
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
