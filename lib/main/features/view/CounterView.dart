import 'package:counter/main/data/model/CounterModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:counter/main/features/viewmodel/CounterViewModel.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

/*  @override
  initState() {
    late CounterViewModel viewmodel;
    viewmodel = CounterViewModel(symbole:true);
  }*/
  //viewmodel = CounterViewModel(symbole:true);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    late CounterViewModel viewmodel = CounterViewModel(symbole:true);
    final height = Provider<double>((ref) {
      return MediaQuery.sizeOf(context).height;
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: ref.watch(height) * 0.1,
          children: [
            const Text('You have pushed the button this many times:'),
            Text('0', style: Theme.of(context).textTheme.headlineMedium),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () => {

                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () => {

                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => {

                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
