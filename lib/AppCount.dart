import 'package:flutter/material.dart';

class AppCounter extends StatefulWidget {
 const AppCounter({super.key});

 @override
 State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {

 int count = 0;

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Counter"),
     ),
     body: Container(
      color: Color.fromARGB(255, 24, 166, 223),
       padding: EdgeInsets.all(20),
       child: Column(
         children: [
           Container(
             width: double.infinity,
             child: ElevatedButton(
               onPressed: () {
                 setState(() {
                   count += 1;
                 });
               },
               child: Text("PLUS"),
             ),
           ),
           Container(
             color: Color.fromARGB(255, 7, 175, 49),
             width: double.infinity,
             height: 200,
             child: Center(
               child: Text(
                 count.toString(),
                 style: TextStyle(
                   fontSize: 50,
                   color: Color.fromARGB(255, 233, 9, 9)
                 ),
               ),
             ),
           ),
           Container(
             width: double.infinity,
             child: ElevatedButton(
               onPressed: () {
                 setState(() {
                   count -= 1;
                 });
               },
               child: Text("MINUS"),
             ),
           ),
         ],
       ),
     ),
   );
 }
}


