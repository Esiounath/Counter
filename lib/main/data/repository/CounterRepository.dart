import 'package:counter/main/data/model/CounterModel.dart';
import 'package:counter/main/data/services/CounterServices.dart';
import 'dart:async';
import 'dart:convert';
class CounterRepository {
  final String file = '../services/data.json';
  Future<CounterModel> CounterDataModel() async{
    try{
      return await CounterModel.fromJson(jsonDecode(getData(this.file).toString()) as Map<String, dynamic>);
    }catch(e){
      return CounterModel(counter:0);
    }
  }
}