import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai7 extends StatelessWidget {
  const bai7({super.key});

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
          'Chuyện rằng - Thịnh Suy',
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
                      "[Cmaj7]Chẳng thế là quá muộn khi nói lời yêu một [Am7]người\nChẳng thế là quá muộn khi ta hoài tiếc một [Dm7]đời\nNhững lời yêu sao quá [G7]khó khăn\n[Cmaj7]Kìa những tháng năm dài ta đã cùng đi bên [Am7]nhau\nNhìn đóa môi em cười cho ta một vết thương [Dm7]sâu\nNhững lời yêu sao quá [G7]khó khăn\n\n\nChuyện rằng huh huh huh huh [Cmaj7]huh, mơ màng\nAnh giam yêu dấu trong anh từng [Am7] phút, yên lặng\nLà từng câu hát anh yêu [Dm7] em,\nViết ra không tên, [G7]khi đêm đen về\nChuyện rằng năm tháng cứ trôi chẳng [Cmaj7]thấy, quay lại\nTại sao anh vẫn đau khi nhìn [Am7]thấy, em bên ai\nLiệu rằng câu hát anh bên [Dm7]em, sẽ đến bên em?\nKhi đêm [G7]ùa vào ôm chặt em, oh I'm just a [Cmaj7] boy \n\n\n[C] [Am7] [Dm7] [G7]\n\n\n[Cmaj7]Tìm thấy nhau cả rồi nhưng trong lòng vẫn chơi [Am7]vơi\nThả tiếng yêu không lời trôi theo ngọn gió muôn [Dm7]nơi\nNhững lời yêu sao quá khó [G7]khăn\n\n\nChuyện rằng huh huh huh huh [Cmaj7] huh, mơ màng\nAnh giam yêu dấu trong anh từng [Am7]phút, yên lặng\nLà từng câu hát anh yêu [Dm7]em,\nViết ra không tên, [G7]khi đêm đen về\nChuyện rằng năm tháng cứ trôi chẳng [Cmaj7]thấy, quay lại\nTại sao anh vẫn đau khi nhìn [Am7]thấy em bên ai\nLiệu rằng câu hát anh yêu [Dm7]em, sẽ đến bên em?\nKhi đêm [G7]ùa vào ôm chặt em\n\n\nNgập ngừng lời [Cmaj7]yêu, la la love\nCó phải quá trễ để trao về [Am7]em không, la la love\nCó phải tiếng khóc cô đơn vì[Dm7] em, la la love\nĐã đến lúc hát lên câu [G7]ca này\nNgập ngừng lời [Cmaj7]yêu, la la love\nChẳng thể quá trễ để trao về [Am7]em đâu, la la love\nChẳng còn tiếng khóc cô đơn vì [Dm7]em, la la love\nĐã đến lúc hát lên câu [G7]ca này\n\n\nLên tone\n\n\nChuyện rằng huh huh huh huh [Dmaj7]huh, mơ màng\nAnh trao yêu dấu trong anh từng [Bm7] phút, yên bình\nĐể từng câu hát anh yêu [Em7]em, sẽ luôn bên em, [A7]khi đêm đen về\nChuyện rằng năm tháng cứ trôi chẳng [Dmaj7]thấy, quay lại\nPhải chăng hối tiếc khi có nhìn [Bm7]thấy em bên ai\nĐể từng câu hát anh yêu [Em7]em, sẽ đến bên em\nKhi đêm [A7]ùa vào ôm chặt em, oh i'm just a [D]boy\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.tiktok.com/@chikienguitar/video/6873039166901423362'); // Replace the URL with your desired link
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
