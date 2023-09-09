import 'dart:math';
import 'bmi_result.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double height=120;
  int weight =30;
  int age =20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ( ){
                          setState(() {
                          isMale = true ;
                        });
                      },
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                      Image(
                                        image: AssetImage('images/male.png'),
                                          height: 90,
                                           width: 90,
                                ),
                              SizedBox(height: 15,),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold ,
                                   fontSize: 25),
                                ),
                      
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:isMale?Colors.blue: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                   Expanded(
                     child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false ;
                        });
                      },
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            color:!isMale?Colors.blue: Colors.grey[400],
                         ),
                         child: const Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                              Image(
                                image: AssetImage('images/female.png'),
                                height: 90,
                                width: 90,
                                ),
                               SizedBox(height: 15,),
                               Text(
                                 'FEMALE',
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold ,
                                    fontSize: 25),
                                 ),
                       
                           ],
                         ),
                       ),
                     ),
                   ),
                
                ],
              ),
            )
          ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[400],
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold ,
                                fontSize: 25),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                 Text(
                                  '${height.round()}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w900 ,
                                     fontSize: 40),
                                  ),
                                  const SizedBox(width: 5.0,),
                                   const Text(
                                  'CM',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold ,
                                     fontSize: 20),
                                  ),
                              ],
                            ),
                            Slider(
                              value: height ,
                              max: 220,
                              min: 80,
                               onChanged: (value)
                               {
                                setState(() {
                                  height = value;
                                });
                               })
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[400],
                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Text(
                                    'WEIGHT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold ,
                                       fontSize: 25),
                                    ),
                          Text(
                                        '$weight',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w900 ,
                                           fontSize: 40),
                                        ),
                          Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: 'weight-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: 'weight+',
                              mini: true,
                              child: const Icon(
                                Icons.add,),
                              ),
                            ],
                          )
                          ],
                        ),
                      ),
                    ),
                   const SizedBox(width: 20,),
                   Expanded(
                     child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[400],
                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Text(
                                    'AGE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold ,
                                       fontSize: 25),
                                    ),
                          Text(
                                        '$age',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w900 ,
                                           fontSize: 40),
                                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              heroTag: 'age-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              heroTag: 'age+',
                              mini: true,
                              child: const Icon(
                                Icons.add,),
                              ),
                            ],
                          )
                          ],
                        ),
                      ),
                   ),
               
                  ],
                ),
              )
            ),
          Container(
            width: 250,
            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
            // color: Colors.blue,
            child: MaterialButton(
              onPressed: (){
                double result = weight /pow(height / 100 , 2) ;

                Navigator.push(context, 
                MaterialPageRoute(
                  builder: 
                  (context)=>BMI_Result(
                    age: age,
                    isMale: isMale,
                    result: result.round(),
                  ),));
              },
              height: 50.0,
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white),
                  
                  ),
              ),
            
          )
        ],
      ),
    );
  }
}