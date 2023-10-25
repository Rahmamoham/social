import 'package:flutter/material.dart';
import 'dart:math';

void  main(){
  runApp(MaterialApp(
      home:test(),),);
    
}
// class lado extends StatelessWidget {
 
//   // const lado({Key? key}): super(key: key);
//   @override
//   Widget build(BuildContext  context){

//      int loadednum =1;
//     return Scaffold(
     
      
      
//       appBar: AppBar( 
     
//         centerTitle: true,
//         title: Text("ludo"),
   
//         ),
//         body: Center(
//           child: Row(
//             children: [
//             Expanded(child: Padding(padding: 
//             EdgeInsets.only(left: 16, right: 16),  child: InkWell(
//              onTap:(){
//               print("load is taed");

//              },  child: Image.asset("images/l1$loadednum.jpg")))),
//              Expanded(child: Padding(padding: 
//             EdgeInsets.only(left: 16, right: 16),  child: InkWell(
//              onTap:(){
//               print("load is taed");

//              },  child: Image.asset("images/l4.jpg")))),
//           ],
//           ),
//         ),
        


//     );
//   }
// }

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int  ludoNumber =1;
 
  @override
  Widget build(BuildContext context) {
    
  return Scaffold(
     
      
      
      appBar: AppBar( 
     
        centerTitle: true,
        title: Text("ludo"),
   
        ),
        body: Center(
          child: Row(
            children: [
            Expanded(
              child: Padding(
                padding: 
            EdgeInsets.only(left: 16, right: 16),  
            child: GestureDetector(
             onTap:(){
              print("load is taed");

             },  
             child: Image.asset("images/l$ludoNumber.jpg"),
             ),
             ),
             ),
             Expanded(
              child: Padding(
                padding: const
            EdgeInsets.only(left: 16, right: 16),  
            child: InkWell(
             onTap:(){
              print("load is taed");
              setState(() {
                ludoNumber = Random().nextInt(6)+1;
              }
              );

             },  child: Image.asset("images/l4.jpg")))),
          ],
          ),
        ),
        


    );
  }
}