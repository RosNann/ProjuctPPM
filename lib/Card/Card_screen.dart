import 'package:flutter/material.dart';
import 'package:projectaddpp/Card/product.dart';
import 'package:projectaddpp/widgets/test.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF8E6),
   body: Padding(
     padding: const EdgeInsets.only(left: 15),
     child: SafeArea(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Text("YOUR BASKET",style: TextStyle(fontSize: 27,color: Color(0xff718E7C),),),
             InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>test()));
               },
               child: Row(children: [
                 Text("Continue Shopping",style: TextStyle(fontSize: 17,color: Color(0xff494D41)),),
                 IconButton(onPressed: () {

                 }, icon: Icon(Icons.arrow_forward_ios,size: 18,))
               ],),
             )
           ],),SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.only(left: 0,right: 15),
             child: Container(
               height: 350,
               width: double.infinity,
               decoration: BoxDecoration(
                   color: Color(0xffFAF8E6),
                 border: Border.all(color: Colors.black12),
                   boxShadow: [
               BoxShadow(
                 color: Colors.black12,
                 offset: const Offset(0.0, 0.0),
                 blurRadius: 3.0,
                 spreadRadius: 3.0,
               ), //
               ]
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Your basket is empty",style: TextStyle(fontSize: 17)),
                   const SizedBox(height: 15,),
                   Container(
                     decoration: BoxDecoration(
                         color: Color(0xff0E6734),
                       borderRadius: BorderRadius.circular(4),
                     ),
                     height: 50,
                     width: 240,
                     child: InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
                       },
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.shopping_cart_outlined,color: Colors.white,),

                           Text("CONTINUE SHOPPING",style: TextStyle(fontSize: 17,color: Colors.white)),
                         ],
                       ),
                     ),
                   )
                    ],
               ),
             ),
           ),SizedBox(height: 35,),
           Text("Follow us"),
           Row(
             children: [
               IconButton(onPressed: () {

               }, icon: Icon(Icons.facebook,size: 40,)),
               IconButton(onPressed: () {

               }, icon: Icon(Icons.facebook)),
               IconButton(onPressed: () {

               }, icon: Icon(Icons.link)),
               IconButton(onPressed: () {

               }, icon: Icon(Icons.facebook)),
             ],
           ),

         ],
       ),
     ),
   ),
    );
  }
}
