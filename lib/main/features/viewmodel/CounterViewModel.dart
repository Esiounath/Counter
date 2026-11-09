import 'dart:async';
import 'package:counter/main/data/model/CounterModel.dart';
class CounterViewModel{
  int? counter;
  bool symbole;
  late CounterModel model;
  CounterViewModel({required this.symbole}){;
    this.symbole = symbole;
    model = CounterModel(counter:this.counter!);
  }
  Future<int> getCounter() async{
    if(model.min! >= 0 && (this.counter! >= model.min! && this.counter! <= model.max!)){
      try{
        switch(this.symbole){
          //Si le plus est appuyé !
          case true:
            //this.counter! += 1;
            return await this.counter! + 1;
            //Si le bouton '-' est appuyé !
          case false:
            this.counter = this.counter! >= 0 ? this.counter! - 1 : this.counter;
            return await this.counter! >= 0 ? this.counter! - 1 : this.counter!;
            //Dans le cas ou je vais faire une calculatrice !
            /*case '*':
            return await this.value * this.value;
          case '/':
            return await this.value / this.value;*/
          default:
            this.counter = 0;
            return this.counter! + 1;
        }
      }catch(e){
        return 0;
      }
    }else{
      return this.counter!;
    }
  }
}