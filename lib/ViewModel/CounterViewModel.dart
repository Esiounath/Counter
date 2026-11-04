import 'dart:async';
import 'package:counter/Model/CounterModel.dart';
class CounterViewModel{
  int counter;
  final bool symbole;
  late CounterModel model;
  CounterViewModel({required this.counter,required this.symbole}){
    this.counter = counter;
    model = CounterModel(counter:this.counter);
  }
  Future<int> getCounter() async{
    if(model.min! >= 0 && this.counter >= 0){
      try{

        switch(this.symbole){
          case true:
            this.counter += 1;
            return await this.counter + 1;
          case false:
            this.counter = this.counter >= 0 ? this.counter - 1 : this.counter;
            return await this.counter >= 0 ? this.counter - 1 : this.counter;
          /*case '*':
            return await this.value * this.value;*/
        /*case '/':
            return await this.value / this.value;*/
          default:
            this.counter = 0;
            return this.counter + 1;
        }
      }catch(e){
        return 0;
      }
    }else{
      return 0;
    }
  }
}