import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bai1 extends StatelessWidget {
  const bai1({super.key});

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
          'Đưa em về nhà - Grey D',
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
                  child: const Text("\nCapo 3\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "đưa em về [C]nhà mây trôi chiều [Am]tà sao trong lòng [Dm]muốn lối đi về càng thêm [G]xa",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "đưa em về [C]nhà xe đi tà [Am]tà Đi ngang nhà [Dm]hát mua ly trà vị [G]giống như ngày đầu mới [Em]iu",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "nói ra bao [A7]điều nhẹ nhàng cùng [Dm]feel mà trong đầu không một chút [G]nghĩ suy",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "về gần tới [Em]nơi mà mình đâu nào [A7]muốn rời còn bao điều [Dm]chưa kịp trao  thôi đành hôm [G]khác\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "đưa em về [C]nhà mây trôi chiều [Am]tà thật lòng chỉ [Dm]muốn lối đi này càng về càng [G]xa",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "đưa em về [C]nhà, con tim thật [Am]thà  đèn đỏ ơi [Dm]nếu nếu như mà được thì đỏ [Fm]hết thêm 5 thêm 7 ngã [C]tư",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[C]đưa em về, đưa em về [A7]đưa em về, đưa em về [Dm]đưa em về, đưa em về  [G]\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "babe [C]nếu mà bây giờ em thấy đang hơi cồn cào [Am]vậy thì ta vòng qua quận 5 để đi ăn đồ tàu",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[Dm]xong rồi kiếm một góc ở bên Hoàng Sa [G]tấp vào trong ngồi chill vì vẫn có dư thời gian mà",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "[C]oh anh có thể nghe thấy nhịp [Am]tim của em đang đập sau con xe máy",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "vi vu con [Dm]phố đã qua bao lâu  lòng này còn một cảm [G]giác cứ như lần đầu mới [Em]iu\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "nói ra bao [A7]điều nhẹ nhàng cùng [Dm]feel mà trong đầu không một chút [G]nghĩ suy",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "về gần tới [Em]nơi mà mình đâu nào [A7]muốn rời còn bao điều [Dm]chưa kịp trao  thôi đành hôm [G]khác\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "đưa em về [C]nhà mây trôi chiều [Am]tà thật lòng chỉ [Dm]muốn lối đi này càng về càng [G]xa",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      "đưa em về [C]nhà, con tim thật [Am]thà  đèn đỏ ơi [Dm]nếu nếu như mà được thì đỏ [Fm]hết thêm 5 thêm 7 ngã [C]tư\n\n",
                      style: CustomTextStyle.nameOfTextStyle),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        "vòng quanh thành [Fm]phố, tiện đường ra ngoại [C]",
                        style: CustomTextStyle.nameOfTextStyle)),
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        "mình đi [A7]khắp muôn nơi dù vẫn chưa lên [Dm]đồ",
                        style: CustomTextStyle.nameOfTextStyle)),
                const Text(
                    "chỉ ngồi bên cạnh [Fm]nhau thôi mà, chẳng cần phải nói [G]ra\n\n",
                    style: CustomTextStyle.nameOfTextStyle),
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        "[C]đưa em về, đưa em về đưa em về, [E7]đưa em về",
                        style: CustomTextStyle.nameOfTextStyle)),
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        "[Dm]đưa em về đưa em về đưa em về, [G]đưa em về",
                        style: CustomTextStyle.nameOfTextStyle)),
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("[C]đưa em về nhà, [E7]đưa em về nhà",
                        style: CustomTextStyle.nameOfTextStyle)),
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        "[Dm]đưa em về nhà [G]đưa em về nhà [C]anh.\n\n",
                        style: CustomTextStyle.nameOfTextStyle)),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.tiktok.com/@guitarinstruction/video/7235267783704153349?q=guitarinstruction&t=1689222730392'); // Replace the URL with your desired link
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
