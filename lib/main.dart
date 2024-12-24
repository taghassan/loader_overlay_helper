import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay_helper/loader_overlay_extensions.dart';
import 'package:loader_overlay_helper/loader_overlay_mixin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ).wrapWithGlobalLoaderOverlay();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with LoaderOverlayMixin {
  int _counter = 0;

  void _incrementCounter() {
   showLoading();
   Future.delayed(Duration(seconds: 2),() {
     loadingAddProgress(progress: "this is progress step 1");
   },);
   Future.delayed(Duration(seconds: 4),() {
     loadingAddProgress(progress: "this is progress step 2");
   },);
   Future.delayed(Duration(seconds: 6),() {
     loadingAddProgress(progress: "this is progress step 3");
   },);
   Future.delayed(Duration(seconds: 8),() {
     hideLoading();
   },);
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
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
