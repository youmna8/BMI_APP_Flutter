import 'package:flutter/material.dart';

void main() {
  runApp(resul(
    Result: 2.11,
    age: 22,
    isMale: true,
  ));
}

class resul extends StatelessWidget {
  const resul(
      {Key? key, required this.Result, required this.isMale, required this.age})
      : super(key: key);
  final double Result;
  final bool isMale;
  final int age;

  String get resultphrase {
    String resulttext = "";
    if (Result >= 30) {
      resulttext = 'Obese';
    } else if (Result > 25 && Result < 30) {
      resulttext = 'OverWeight';
    } else if (Result >= 18.5 && Result <= 24.9) {
      resulttext = 'Normal';
    } else {
      resulttext = 'Thin';
    }

    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: const Text(
            'Result',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender:${isMale ? 'male' : 'female'}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Result:${Result.toStringAsFixed(1)}',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Healthness:$resultphrase',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Text(
                'Age:$age',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        )),
      ),
    );
  }
}
