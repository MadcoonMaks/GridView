import 'package:flutter/material.dart';
import 'package:project_mk/design.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        theme: ThemeData.dark(),
        home: MyHomePage (),

    );
  }
  }













// }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       theme: ThemeData.dark(),
//       home: Scaffold(
//
//           body: ListView(
//             padding: const EdgeInsets.all(8),
//             children: <Widget>[
//               Container(
//                 padding:EdgeInsets.symmetric(
//                   horizontal:20,
//                   vertical:50,
//                 ),
//                 decoration:BoxDecoration(
//                   color: Colors.amber[500],
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Center(child: Text('Entry A')),
//               ),
//               Container(
//                 margin:EdgeInsets.only(top:40),
//                 padding:EdgeInsets.symmetric(
//                   horizontal:20,
//                   vertical:170,
//                 ),
//                 decoration:BoxDecoration(
//                   color: Colors.pink[500],
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: const Center(child: Text('Entry B')),
//               ),
//
//               Container(
//                   margin: EdgeInsets.only(top: 100.0),
//                   width: MediaQuery.of(context).size.width,
//                   heighе: MediaQuery.of(context).size.height,
//               child: ListView.builder(
//                   itemCount: list.length,
//                   itemBuilder: (context,index) {
//                     return
//                       Container(
//                         margin: EdgeInsets.all(10.0),
//                         padding: EdgeInsets.all(15.0),
//                         width: 150.0,
//                         color: const Color.fromARGB(54, 54, 104, 0.6),
//                         alignment: Alignment.centerLeft,
//                         child: Text(list[index].title, style: TextStyle(color: Colors.white),),
//                       ),
//                   }
//               ),
//             ],
//           )
//         floatingActionButton: FloatingActionButton(
//         onPressed:,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
