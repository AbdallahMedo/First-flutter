import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'DateTime now!!!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    void _incrementCounter() {
      setState(() {
        DateTime now = DateTime.now();
        var timezone = now.timeZoneName;
        var offset = now.timeZoneOffset;
        var time=DateTime.now();

      });
    }

      DateTime now = DateTime.now();
    var timezone = now.timeZoneName;
    var offset = now.timeZoneOffset;
    var time=DateTime.now();
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TimeZone Name : $timezone",
            ),
            // Text(
            //   "TimeZone Offset : $offset",
            // ),
            Text(
              "TimeZone Offset : $time",
            ),
          ],
        ),
      ),
    floatingActionButton: FloatingActionButton(

    tooltip: 'Increment',
    onPressed: _incrementCounter ,
    child: const Icon(Icons.access_time),
    ),
    );
  }
  }

