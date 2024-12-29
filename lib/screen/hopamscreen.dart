import 'package:flutter/material.dart';
import 'package:music_app/screen/thembaihat.dart';
// ignore: depend_on_referenced_packages
import 'package:like_button/like_button.dart';
import 'package:music_app/HopAm/bai1.dart';
import 'package:music_app/HopAm/bai2.dart';
import 'package:music_app/HopAm/bai3.dart';
import 'package:music_app/HopAm/bai4.dart';
import 'package:music_app/HopAm/bai5.dart';
import 'package:music_app/HopAm/bai6.dart';
import 'package:music_app/HopAm/bai7.dart';
import 'package:music_app/HopAm/bai8.dart';
import 'package:music_app/HopAm/bai9.dart';
import 'package:music_app/HopAm/bai10.dart';

List<String> searchterms = [
  "Đưa em về nhà - Grey D",
  "Lần Cuối - Ngọt",
  "Anh sẽ đến cùng cơn mưa - Grey D",
  "Fifty Fifty - Cupid",
  "Thắc mắc - Thịnh Suy",
  "Senorita - Shawn Mendes, Camila Cabello",
  "Chuyện rằng - Thịnh Suy",
  "My only one - Sebastian Yatra ft. Isabela Moner",
  "ID 072019 - W/N",
  "Là anh - Phạm Lịch"
];
List<Widget> page1 = [
  const bai1(),
  const bai2(),
  const bai3(),
  const bai4(),
  const bai5(),
  const bai6(),
  const bai7(),
  const bai8(),
  const bai9(),
  const bai10(),
];

// ignore: camel_case_types
class hopam extends StatefulWidget {
  const hopam({super.key});

  @override
  State<hopam> createState() => _hopamState();
}

// ignore: camel_case_types
class _hopamState extends State<hopam> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black, size: 30),
        leading: IconButton(
          iconSize: 30,
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromRGBO(234, 218, 133, 10),
        centerTitle: true,
        title: const Text(
          'Song Chords',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box),
            tooltip: 'Them bai hat moi',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const thembaihat()),
              );
            },
          ),
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomeSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: searchterms.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page1[index]),
              );
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(12, 5, 12, 5),
              height: 60,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        searchterms[index],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const LikeButton(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomeSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchterms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page1[index]),
            );
          },
          child: ListTile(
            title: Text(result),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    List<Widget> matchQuery1 = [];
    for (var id = 0; id < searchterms.length; id++) {
      var fruit = searchterms[id];
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
        matchQuery1.add(page1[id]);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => matchQuery1[index]),
            );
          },
          child: ListTile(
            title: Text(result),
          ),
        );
      },
    );
  }
}
