// ignore: depend_on_referenced_packages
// import 'package:firstflutter/try.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/setting.dart';

void main()=> runApp(const MaterialApp(
  home:APP(), 
  debugShowCheckedModeBanner: false
,));

class KALAND extends StatelessWidget
 { const  KALAND({super.key});
   
 @override
 Widget build(BuildContext){

  return Scaffold( body: const Center( 
    child: Column ( 
      
      children: [
        Text('Body then center after then child '),
        Text('column and the children then'),
        Text('Text,Text')
      ]) 
),
    backgroundColor:
        Colors.tealAccent
        ,appBar:AppBar(backgroundColor:
        Colors.blue,elevation: 50,
        title:const Text('Main Page'),
        centerTitle:true,
        titleTextStyle:const TextStyle(fontSize: 30,),
      
       ),);
 } 
} 