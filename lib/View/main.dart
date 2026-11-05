import 'package:flutter/material.dart';
//import 'package:counter/ViewModel/CounterViewModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(){
  runApp(ProviderScope(child:MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget{
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
  /*  final width = Provider<double>((ref){
      return MediaQuery.sizeOf(context).width;
    });*/
    final height = Provider<double>((ref){
      return MediaQuery.sizeOf(context).height;
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing:ref.watch(height) * 0.1,
          // spacing: ,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '0',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed:()=>{},
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                    onPressed:()=>{}, child:Text('Reset',
                  style:TextStyle(
                  color:Colors.deepPurple,
                ),)),
                FloatingActionButton(
                  onPressed:()=>{},
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
