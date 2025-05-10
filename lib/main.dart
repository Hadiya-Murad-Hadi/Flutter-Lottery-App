import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
Random random = Random();
int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Lottery App', style: TextStyle(
              color: Colors.deepOrange.shade600,
              fontFamily: 'Pacifico',
              fontSize: 30,
            ),),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Center(child: Text('Lottery winning number is 4', style: TextStyle(
                fontSize: 20,
                fontFamily: 'Rubik Medium',
              ),)),
              SizedBox(height: 20,),
              Container(
                height: 250 ,
                width: 300,
                decoration: BoxDecoration(
                  color:x==4?Colors.teal.shade300: Colors.blueGrey.withOpacity(.4),
                  borderRadius: BorderRadius.circular(10)
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: x==4? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                         Icon(Icons.done_all, color: const Color.fromARGB(255, 255, 255, 2), size: 35,),
                         SizedBox(height: 15,),
                          Text('You won the Lottery, your number was $x \nCongratulations ', textAlign: TextAlign.center,)
                    ],
                  )
                 :
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                         Icon(Icons.error, color: const Color.fromARGB(255, 134, 30, 22), size: 35,),
                         SizedBox(height: 15,),
                          Text('Better luck next time! Your number is $x \nTry Again', textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(5);
            print(x);
            setState(() {
              
            });
          },
          child: Icon( Icons.refresh),
        ),
      ),
    );
  }
}