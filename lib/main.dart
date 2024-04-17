import 'package:flutter/material.dart';

void main() => runApp(CounterWidget());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterWidget(),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;
  @override
  void initState() {
    _count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Tap - to decrement',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.add_circle),
                          color: Colors.indigo,
                          iconSize: 40,
                          onPressed: () {
                            setState(() {
                              _count++;
                            });
                          },
                        ),
                        Text(
                          "$_count",
                          style: TextStyle(
                            fontSize: 45,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          color: Colors.indigo,
                          iconSize: 40,
                          onPressed: () {
                            setState(() {
                              _count--;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Tap + to increment',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
