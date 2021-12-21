import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ExampleWidgetModel {
  ExampleWidgetModel (){
    Hive.initFlutter ();
  }
   doSome () async{
    var box = await Hive.openBox('testbox');


    await box.put(123, "Test");
    print(box.get(123));
    // print (box.values);
    var result = await box.get(123);
     return result;
  }
}