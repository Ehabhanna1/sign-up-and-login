import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:statemangment/Model/dataModel.dart';
final getDataFuture=ChangeNotifierProvider<DataFromApi>((ref)=>DataFromApi());

class DataFromApi extends ChangeNotifier{
List<DataModel>listDataModel=[];
DataFromApi(){
  getData();
}

  Future getData() async {
    listDataModel = [];
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      print(url);
      var responde = await http.get(url);
      var respondebody = jsonDecode(responde.body);
      print("respondebody:$respondebody");
      for (int i = 0; respondebody.length; i++) {
        listDataModel.add(DataModel.fromMap(respondebody[i]));
      }
    }
    catch (erorr){
      print("eeee==>$erorr");
    }//مهمة جدااا عشان الكود يسمع متنسهاااش
    notifyListeners();
    }
  }