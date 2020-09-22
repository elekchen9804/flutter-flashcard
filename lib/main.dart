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
            child: Text("Go to Other"),
            onPressed: () => Get.to(Other()),
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
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
