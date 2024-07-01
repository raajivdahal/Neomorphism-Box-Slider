import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoxSlider(),
    );
  }
}

class BoxSlider extends StatefulWidget {
  const BoxSlider({super.key});

  @override
  State<BoxSlider> createState() => _BoxSliderState();
}

class _BoxSliderState extends State<BoxSlider> {
  double _radius = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Box Slider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(10.0, 10.0),
                        blurRadius: 20.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.85),
                        offset: Offset(-10.0, -10.0),
                        blurRadius: 20.0,
                        spreadRadius: 1.0,
                      )
                    ],
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(_radius)),
              ),
              Text(
                "Border Raius : ${_radius.round()}",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Slider(
                  min: 0,
                  max: 100,
                  value: _radius,
                  label: '${_radius.round()}',
                  divisions: 20,
                  onChanged: (radius) {
                    setState(() {
                      _radius = radius;
                    });
                  })
            ],
          ),
        ));
  }
}
