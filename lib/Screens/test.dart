import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container with Button'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.yellow[200],
              ),
              Positioned(
                right: -50,
                child: MaterialButton(
                  onPressed: () {
                    // Add your button's action here
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text('Button'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}