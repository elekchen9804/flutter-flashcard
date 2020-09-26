import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
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

class CardSet extends StatelessWidget {
  final cardContent;

  CardSet(this.cardContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: ListTile(
              leading: Icon(Icons.library_books),
              title: Text(cardContent['title']),
              subtitle: Text(cardContent['itemAmount']),
            ),
          ),
        ),
      ),
    );
  }
}
