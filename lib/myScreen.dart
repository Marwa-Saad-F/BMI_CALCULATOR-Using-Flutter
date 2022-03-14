import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'BMI_result.dart';

class myScreen extends StatefulWidget {
  @override
  State<myScreen> createState() => _myScreenState();
}

class _myScreenState extends State<myScreen> {
  bool isMale = true;
  double height = 160.0;
  int age = 22;
  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.teal[400],
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale ? Colors.teal[300] : Colors.grey[200],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                height: 100.0,
                                width: 100.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale ? Colors.grey[200] : Colors.teal[300],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 100.0,
                                width: 100.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                'Height',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '${height.round()}',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'CM',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Slider(
                                min: 80.0,
                                max: 220.0,
                                value: height,
                                activeColor: Colors.teal[400],
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                  print(value.round());
                                },
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'age-',
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                FloatingActionButton(
                                  heroTag: 'age+',
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight-',
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                FloatingActionButton(
                                  heroTag: 'weight+',
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.teal[300],
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    double result = weight / pow((height / 100), 2);
                    late String explanation;
                    if (result < 18.5) {
                      explanation =
                          'You have underweight,so you should gain some weight. ';
                    } else if (result >= 18.5 && result < 25) {
                      explanation = 'You have a normal weight keep it.';
                    } else if (result >= 25 && result < 30) {
                      explanation =
                          'You have overweight, so you should lose some weight.';
                    } else {
                      explanation = 'You are very fat,you must lose weight.';
                    }
                    print(result.round());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => BMI_result(
                            explanation: explanation,
                            height: height,
                            age: age,
                            weight: weight,
                            isMale: isMale,
                            result: result,
                          ),
                        ));
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
