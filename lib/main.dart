import 'package:flashcard/widget/card_set.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/login.dart';

void main() => runApp(MyApp());

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // 設定預設字體
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Login(),
      builder: (context, child) {
        //讓字體大小不受外部影響
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final Controller c = Get.put(Controller());

  @override
  Widget build(context) => Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
          child: RaisedButton(
            child: Text("Go to Flashcard list"),
            onPressed: () => Get.to(FlashcardList()),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: c.increment,
        ),
      );
}

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${c.count}"),
            RaisedButton(
              child: Text("Go to Home"),
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}

class FlashcardList extends StatelessWidget {
// You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  final cardList = [
    {'id': '0', 'title': 'English words', 'itemAmount': '300'},
    {'id': '1', 'title': 'Japanese words', 'itemAmount': '400'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card List")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: cardList.map((item) => new CardSet(item)).toList(),
        ),
      ),
    );
  }
}
