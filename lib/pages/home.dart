import 'package:bmi_calculator/pages/bmi.dart';
import 'package:flutter/material.dart';
import 'BmiCalculate/BmiCalc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variables
  late double bmi;
  late String level;
  int age = 18;
  int weight = 50;
  int height = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // -- DONE --
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey[800],
                      height: 120,
                      child: const Icon(
                        Icons.male,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 120,
                      color: Colors.grey[800],
                      child: const Icon(
                        Icons.female,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              // -- DONE --
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.grey[700],
                      child: Column(
                        children: [
                          const Text(
                            "HEIGHT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "$height cm",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Slider(
                            min: 150,
                            max: 200,
                            // divisions: 10,
                            activeColor: Colors.pink,
                            inactiveColor: Colors.grey,
                            value: height.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.grey[500],
                      child: Column(
                        children: [
                          const Text(
                            "WEIGHT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 1.0,
                            ),
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  color: Colors.grey[700],
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 20) {
                                        weight -= 1;
                                      }
                                    });
                                  },
                                  child: const Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  color: Colors.grey[700],
                                  onPressed: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  },
                                  child: const Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            min: 20,
                            max: 200,
                            activeColor: Colors.pink,
                            inactiveColor: Colors.grey[700],
                            value: weight.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                weight = value.toInt();
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.grey[500],
                      child: Column(
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 1.0,
                            ),
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  color: Colors.grey[700],
                                  onPressed: () {
                                    setState(() {
                                      if (age > 5) {
                                        age -= 1;
                                      }
                                    });
                                  },
                                  child: const Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  color: Colors.grey[700],
                                  onPressed: () {
                                    setState(() {
                                      if (age < 90) {
                                        age += 1;
                                      }
                                    });
                                  },
                                  child: const Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            min: 10,
                            max: 100,
                            activeColor: Colors.pink,
                            inactiveColor: Colors.grey[700],
                            value: age.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                age = value.toInt();
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              FlatButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.pink[800],
                  onPressed: () {
                    BmiCalc user = BmiCalc(height, weight, age);
                    bmi = user.bmi;
                    level = user.level;

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BMI(bmi: bmi, level: level),
                        ));
                  },
                  child: const Text(
                    "CALCULATE YOUR BMI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ));
  }
}
