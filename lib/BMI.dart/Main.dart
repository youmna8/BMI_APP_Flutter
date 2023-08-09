import 'package:flutter/material.dart';
import 'package:flutter_application_1/BMI.dart/result.dart';
import 'dart:math';

void main() {
  runApp(const muApp());
}

// ignore: camel_case_types
class muApp extends StatelessWidget {
  const muApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.black),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<MyHomePage> {
  bool isMale = true;
  double heightValue = 170;
  int weight = 55;
  int age = 18;
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          'Body Math Index',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.male,
                                  size: 85,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ]),
                          height: 160,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: isMale ? Colors.teal : Colors.blueGrey)),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.female,
                                  size: 85,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ]),
                          height: 160,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: isMale ? Colors.blueGrey : Colors.teal)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blueGrey),
                height: 170,
                width: 380,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        '$_value',
                        style: const TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Slider(
                          activeColor: Colors.teal,
                          min: 0,
                          max: 200,
                          divisions: 200,
                          value: _value,
                          onChanged: (double val) {
                            setState(() {
                              _value = val;
                            });
                          }),
                    ]),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.blueGrey),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Weight',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                '$weight',
                                style: const TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.teal,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: const Icon(Icons.add),
                                    mini: true,
                                    heroTag: 'weightadd',
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.teal,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: const Icon(Icons.remove),
                                    mini: true,
                                    heroTag: 'weightremove',
                                  )
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.blueGrey),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                  mini: true,
                                  heroTag: 'ageadd',
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                  mini: true,
                                  heroTag: 'ageremove',
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              // ignore: sized_box_for_whitespace
              Container(
                  height: 40,
                  width: 380,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal)),
                      onPressed: () {
                        var result = weight / pow(_value / 100, 2);
                        print(result);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) {
                            return resul(
                                Result: result, age: age, isMale: isMale);
                          },
                        ));
                      },
                      child: const Text(
                        'Calculate',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )))
            ],
          ),
        )),
      )),
    );
  }
}
