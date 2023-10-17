import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai9 extends StatelessWidget {
  const bai9({super.key});

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
          'ID 072019 - W/N',
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
                  child: const Text("\ntone gốc capo 6\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "Verse:\n[Fmaj7]Có cơn mưa nào [Fm6]đôi mình đi qua\nAnh [Em7]đến bên em ngày [Am7]đôi mình chia xa\nMùa [Dm7]lá rơi bên hồ\n[G7]Nỗi cô đơn lớn [C]lên \n[Fmaj7]Mùa thu ấy em không còn [Fm6]bên cạnh anh nữa\nAnh vẫn [Em7]đứng nơi đây chờ [Am7]em cùng cơn mưa \nChúng [Dm7]ta sau này\nChẳng [G7]có chúng ta bây [C]giờ \n \nT-ĐK:\nMột người âm thầm [Fmaj7]đứng dưới mưa nhìn [Fm6]em \nMột người giữa thành [Em7]phố vẫn cứ chờ [Am7]em\nVì sao [Dm7]cứ nơi đó mà \n[G7]Ánh dương giờ nơi [C]đâu?\n \nĐK:\nGiờ này chỉ nỗi [Fmaj7]nhớ cứ mãi nhiều [Fm6]thêm\nGiờ này chỉ mình [Em7]ta với những tháng [Am7]năm dài \nCó khi em chẳng [Dm7]còn yêu anh\nNhưng [G7]trái tim ta từng [C]chung lối đi \n \nRap:\nAnh [Fmaj7]đi một vòng thị trấn\nTrên [Fm6]con đường cũ ta đi\nVòng bánh [Em7]xe cứ thế cứ chạy\nHai tuyến [Am7]đường ngược chiều ta nghĩ \nChắc em [Dm7]cũng quên tên đường này rồi\nNhánh hoa [G7]sữa nhẹ bay đi khắp lối\nEm cũng [Csus4]giống như anh của ngày trước \n\nHai con [C]đường về nhà kia sụp tối\nAnh còn [Fmaj7]nhớ hồi đó ta đi học\nLúc tan [Fm6]trường thì em ở sau xe\nLúc em [Em7]buồn thì anh hay trêu chọc\nBảo em [Am7]cười kể chuyện cho nhau nghe\nRồi vào [Dm7]quán mua món mà em thích\nEm mỉm [G7]cười làm anh cũng vui lây\nNhưng hồi [C]đó thì vẫn là hồi đó\nAnh cảm ơn [C7]em đã để lại chuỗi ngày yêu\n \nT-ĐK:\nMột người âm thầm [Fmaj7]đứng dưới mưa nhìn [Fm6]em \nMột người giữa thành [Em7]phố vẫn cứ chờ [Am7]em\nVì sao [Dm7]cứ nơi đó mà \n[G7]Ánh dương giờ nơi [C7]đâu?\n \nĐK:\nGiờ này chỉ nỗi [Fmaj7]nhớ cứ mãi nhiều [Fm6]thêm\nGiờ này chỉ mình [Em7]ta với những tháng [Am7]năm dài \nCó khi em chẳng [Dm7]còn yêu anh\nNhưng [G7]trái tim ta từng [C7]chung lối đi \n\nBridge:\n[Fmaj7]Có cơn mưa nào [Fm6]đôi mình đi qua\nAnh [Em7]viết cho em bài [Am7]ca mùa yêu xa\nMùa [Dm7]lá rơi bên hồ\n[G7]Nỗi cô đơn lớn [C]lên \n[Fmaj7]Mùa thu ấy anh không còn [Fm6]bên cạnh em nữa\nEm vẫn [Em7]đứng nơi đây chờ [Am7]anh cùng cơn mưa \nChúng [Dm7]ta sau này\nChẳng [G7]có chúng ta bây [C]giờ \n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.tiktok.com/@phuongdungsocola/video/7262701459341413650?q=Id%20072019%20guitar%20h%C6%B0%E1%BB%9Bng%20d%E1%BA%ABn&t=1697338498202'); // Replace the URL with your desired link
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
