import 'package:flutter/material.dart';
import 'package:project_mk/hive.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter/src/material/icons.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      );
  }
}
const List<String> list = <String>["Test" , "Test2", "Test3", "Test4", "Test5", "Test6", "Test7", "Test8", "Test9"];
class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  final ExampleWidgetModel model = new ExampleWidgetModel();

  String str = "";
  Map map = {
    "ke1": ""
  };

  @override
  void initState() {
    super.initState();

    getdata();
  }

  getdata() async {
    setState(() async {
      str = await model.doSome();
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
            alignment: AlignmentDirectional.center,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                width: MediaQuery.of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                alignment: Alignment.topCenter,
                child:
                Container(
                  padding: EdgeInsets.all(32.0),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(1470.0),
                          bottomRight: Radius.circular(2170.0),
                          topRight: Radius.circular(1070.0)
                      )
                  ),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only( bottom: 10.0),
                        child: Text('Classically transaction',
                          style: TextStyle(color: Colors.white, fontSize: 30),),
                      ),
                      Text('Classically this transaction into a  ' ,
                        style: TextStyle(color: Colors.white),),
                      Text('particular category ' ,
                        style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 220),

                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 54, 104, 0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         FloatingActionButton (
                            onPressed: () {},
                                backgroundColor: Colors.blue,
                            child: Icon(Icons.widgets, color: Colors.white,)
                         ),
                        Text("General", textAlign: TextAlign.center, style:TextStyle( color: Colors.blue, fontSize: 20  ) )
                      ],

                    )
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 54, 104, 0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton (
                              onPressed: () {},
                              backgroundColor: Colors.deepPurple,
                              child: Icon(Icons.directions_bus, color: Colors.white,)
                          ),
                          Text("Transport", textAlign: TextAlign.center, style:TextStyle( color: Colors.deepPurple, fontSize: 20  ) )
                        ],

                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 54, 104, 0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton (
                              onPressed: () {},
                              backgroundColor: Colors.pinkAccent,
                              child: Icon(Icons.shopping_bag, color: Colors.white,)
                          ),
                          Text("Shopping", textAlign: TextAlign.center, style:TextStyle( color: Colors.pinkAccent, fontSize: 20  ) )
                        ],

                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 54, 104, 0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton (
                              onPressed: () {},
                              backgroundColor: Colors.amber,
                              child: Icon(Icons.book_online_outlined, color: Colors.white,)
                          ),
                          Text("Bills", textAlign: TextAlign.center, style:TextStyle( color: Colors.amber, fontSize: 20  ) )
                        ],

                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 54, 104, 0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton (
                              onPressed: () {},
                              backgroundColor: Colors.blueAccent,
                              child: Icon(Icons.video_collection_outlined, color: Colors.white,)
                          ),
                          Text("Entertaiment", textAlign: TextAlign.center, style:TextStyle( color: Colors.blueAccent, fontSize: 20  ) )
                        ],

                      )
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 54, 104, 0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton (
                              onPressed: () {},
                              backgroundColor: Colors.green,
                              child: Icon(Icons.local_grocery_store, color: Colors.white,)
                          ),
                          Text("Grocery", textAlign: TextAlign.center, style:TextStyle( color: Colors.green, fontSize: 20  ) )
                        ],

                      )
                  ),
                ],
              )
            ]
        ),
  bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon( Icons.home), label: ""),
      BottomNavigationBarItem(icon: Icon( Icons.widgets), label: "")
    ],
  )
    //     bottomNavigationBar: BottomNavigationBar(
    //   type: BottomNavigationBarType.fixed,
    //   backgroundColor: Color(0xFF6200EE),
    //   selectedItemColor: Colors.white,
    //   unselectedItemColor: Colors.white.withOpacity(.60),
    //   selectedFontSize: 14,
    //   unselectedFontSize: 14,
    //   onTap: (value) {
    //     // Respond to item press.
    //   },
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.favorite),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.library_books),
    //     ),
    //     BottomNavigationBarItem(
    //
    //       icon: Icon(Icons.location_on),
    //     ),
    //   ],
    // )
    );
  }
}
    //       Container(
    //           margin: EdgeInsets.only(top: 100.0),
    //           width: MediaQuery.of(context).size.width,
    //           height: MediaQuery.of(context).size.height;
    // ),
    // ;
    // ),
    // );
    //
  //   child: ListView.builder(
  //   itemCount: list.length,
  //   itemBuilder: (context,index) {
  //   return
  //     Container(
  //       margin: EdgeInsets.all(10.0),
  //       padding: EdgeInsets.all(15.0),
  //       width: 150.0,
  //       height: 70.0,
  //       decoration: BoxDecoration(
  //       color: Color.fromRGBO(54, 54, 104, 0.6),
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       alignment: Alignment.centerLeft,
  //     child: Text(str, style: TextStyle(color: Colors.white)),
  //     );
  //   },
  //   ),
  //         ),
  // ]
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () async {
  //           var e = await model.doSome();
  //           int t = 0;
  //         },
  //       tooltip: 'Increment',
  //       child: const Icon(Icons.add),
  //     ),
  //   );
  // }
  // }
  // class Item {
  // String title;
  // Item(this.title);
  // }