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

//main bodydin kodi
class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0; //int integers
  @override
  void initState() {
    _count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Counter',
            style: TextStyle(fontSize: 27, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 135, 67, 89),
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Tap "-" to decrement',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 236, 0, 83),
                        fontSize: 19),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline_outlined),
                          color: Color.fromARGB(255, 135, 67, 89),
                          iconSize: 45,
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
                            color: const Color.fromARGB(255, 135, 67, 89),
                          ),
                        ),
                        IconButton(
                          icon:
                              const Icon(Icons.remove_circle_outline_outlined),
                          color: Color.fromARGB(255, 135, 67, 89),
                          iconSize: 45,
                          onPressed: () {
                            setState(() {
                              //setStatetin Stateful widget sostoianiasin ozgertet
                              _count--;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Tap "+"to increment',
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 0, 83), fontSize: 19),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
