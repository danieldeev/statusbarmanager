import 'package:flutter/material.dart';
import 'package:statusbarmanager/statusbarmanager.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatusBarManager(
      child: AppExample(),
      translucent: false,
      statusBarColor: Colors.white,
      navigationBarColor: Colors.white,
      navigationBarDividerColor: Color(0xFFE9E9E9),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      navigationBarBrightness: Brightness.dark,
    );
  }
}

class AppExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo StatusBar',
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.purple,
        ),
        home: SafeArea(
          child: MyHomePage(title: 'StatusBar Example'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
            Text(
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
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
