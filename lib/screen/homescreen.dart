import 'package:flutter/material.dart';
import 'package:music_app/screen/hopamscreen.dart';
import 'package:music_app/screen/tuna.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

// ignore: camel_case_types
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

List<product> productlist = [
  product('assets/image/chord.jpg', 'Song Chords', const Color(0xffFFF9D1),
      const hopam(), 'assets/icon/chord.png'),
  product('assets/image/tuna.jpg', 'Tuner', const Color(0xffC3EEFA), tuna(),
      'assets/icon/tuna.png'),
];

// ignore: camel_case_types
class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 252, 228, 228),
            Color.fromARGB(255, 214, 233, 248),
          ],
        )),
        child: Column(
          children: [
            Container(
              height: 140,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              alignment: Alignment.center,
              child: const Text(
                'Guitar Amaze',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              alignment: Alignment.center,
              child: SizedBox(
                height: 360,
                child: ScrollSnapList(
                  itemBuilder: _buildListItem,
                  itemCount: productlist.length,
                  itemSize: 250,
                  onItemFocus: (index) {},
                  dynamicItemSize: true,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

// ignore: camel_case_types
class product {
  String imagepath;
  String title;
  String icon;
  Color colors;
  Widget page;
  product(
    this.imagepath,
    this.title,
    this.colors,
    this.page,
    this.icon,
  );
}

Widget _buildListItem(
  BuildContext context,
  int index,
) {
  product ahihi = productlist[index];
  return SizedBox(
    width: 250,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ahihi.page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: ahihi.colors,
          boxShadow: const [
            BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
          ],
        ),
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              ahihi.imagepath,
              fit: BoxFit.fill,
              height: 220,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ahihi.title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: ImageIcon(
                      AssetImage(ahihi.icon),
                      size: 45,
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    ),
  );
}
