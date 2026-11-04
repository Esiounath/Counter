import 'dart:convert';
import 'dart:async';
import 'package:counter/Services/CounterServices.dart';
class CounterModel{
  final int? max;
  final int? min;
  final  int counter;
  CounterModel({this.max,this.min,required this.counter});
  factory CounterModel.fromJson(Map<String, Object?> json) {
    return CounterModel(
      max: json['max'] as int,
      min: json['min'] as int,
      counter: json['counter'] as int,
    );
  }
  Map<String, dynamic> toJson() => {'counter':this.counter};
  Future<CounterModel> CounterDataModel() async{
    try{
      return await CounterModel.fromJson(jsonDecode(getData('./data.json').toString()) as Map<String, dynamic>);
    }catch(e){
      return CounterModel(counter:0);
    }
  }
}
