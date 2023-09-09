import 'package:flutter/material.dart';

// ignore: camel_case_types
class BMI_Result extends StatefulWidget {
  final int result;
  final bool isMale;
  final int age;

   const BMI_Result({super.key, 
     required this.result,
      required this.isMale,
       required this.age});

  @override
  State<BMI_Result> createState() => _BMI_ResultState();
}

// ignore: camel_case_types
class _BMI_ResultState extends State<BMI_Result> {
String? bmi = "";
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                'Gender : ${widget.isMale ?'Male' : 'Female'}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
               Text(
                'Your BMI is ${widget.result}' ,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ), 
              Text(
                '${widget.result >= 25.0 && widget.result < 29.9 ? 'Overweight' : 
                  widget.result >= 18.5 && widget.result < 25.09 ? 'Healthy' : 
                  widget.result >= 29.9 ? 'Obese' : 'Underweight'
                }'
                ,style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color:Color.fromRGBO(23, 18, 34, 1)
              ),
              ),
               Text(
                'Age : ${widget.age}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}