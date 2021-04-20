// import 'package:flutter/material.dart';
// import 'package:pagination_listview/paging.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: MyHomePage(title: 'Paging Example'),
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
//   static const int _COUNT = 10;

//   // mocking a network call
//   Future<List<String>> pageData(int previousCount) async {
//     await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
//     List<String> dummyList = List();
//     if (previousCount < 30) {
//       // stop loading after 30 items
//       for (int i = previousCount; i < previousCount + _COUNT; i++) {
//         dummyList.add('Item $i');
//       }
//     }
//     return dummyList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       body: Pagination(
//           pageBuilder: (currentListSize) => pageData(currentListSize),
//           itemBuilder: (index, item) {
//             return Container(
//               color: Colors.yellow,
//               height: 48,
//               child: Text(item),
//             );
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'provider/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DataProvider(),
          child: HomePage(),
        ),
      ],
      child: MaterialApp(
        title: 'Infinite Scrolling',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
