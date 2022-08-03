import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMI extends StatefulWidget {
  final double bmi;
  final String level;
  const BMI({
    Key? key,
    required this.bmi,
    required this.level,
  }) : super(key: key);
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "YOUR BMI ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.grey[500],
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(minimum: 10,
                          maximum: 35,
                          ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: 10,
                            endValue: 18.5,
                            color: Colors.white),
                        GaugeRange(
                            startValue: 18.5,
                            endValue: 24.9,
                            color: Colors.pink[300]),
                        GaugeRange(
                            startValue: 24.9,
                            endValue: 29.9,
                            color: Colors.pink[600]),
                        GaugeRange(
                            startValue: 29.9,
                            endValue: 35,
                            color: Colors.pink[900]),
                      ], pointers: <GaugePointer>[
                        NeedlePointer(value: widget.bmi)
                      ], annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Text(
                                "${widget.bmi.roundToDouble()}",
                                style: const TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            angle: 90,
                            positionFactor: 0.5)
                      ]),
                    ],
                    enableLoadingAnimation: true, animationDuration: 1600,
                  )),
              Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.pink,
                padding: const EdgeInsets.all(30),
                child: Text(
                  widget.level,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
