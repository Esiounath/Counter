import 'dart:io';
Future<String> getData(String file) async{
 try{
  return await File(file).readAsString();
 }catch(e){
  return 'File not loaded !:$e';
 }
}