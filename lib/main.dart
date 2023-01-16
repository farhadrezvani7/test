import 'package:flutter/material.dart';
import 'package:repo_bloc/data/repo/dl_repository.dart';
import 'package:repo_bloc/data/repo/dlref_repository.dart';
import 'package:repo_bloc/data/repo/product_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // productRepository.getAll(0).then((value) {
    //   debugPrint(value.toString());
    // }).catchError((e) {
    //   debugPrint(e.toString());
    // });
    // productRepository.search('پیاده').then((value) {
    //   debugPrint(value.toString());
    // }).catchError((e) {
    //   debugPrint(e.toString());
    // });
    // dlRepository.getAll().then((value) {
    //   debugPrint(value.toString());
    // }).catchError((e) {
    //   debugPrint(e.toString());
    // });
    dlrefrepository.getAll('1', '09909680720').then((value) {
      debugPrint(value.toString());
    }).catchError((e) {
      debugPrint(e.toString());
    });
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
