import 'package:flutter/material.dart';
import 'package:projectaddpp/widgets/home.dart';
import 'package:projectaddpp/widgets/login.dart';
import 'package:projectaddpp/widgets/reenditailkoi.dart';
import 'package:projectaddpp/widgets/screenditailamazon.dart';
import 'package:projectaddpp/widgets/screenditailbrown.dart';
import 'package:projectaddpp/widgets/screenditailstarbuck.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child:Container(
        color: Color(0xffFAF8E6),
        padding: EdgeInsets.symmetric(vertical:15,horizontal:10),
        child: ListView(
          // Important: Remove any padding from the ListView.

          children: [
            Row(
              children: [


                // TextButton(onPressed: (){
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const login()),
                //   );
                // },
                //     child: Row(
                //       children: [
                //          Icon(Icons.person,color: Colors.black,),
                //         SizedBox(width: 5,),
                //         Text("LOG IN",style: TextStyle(color: Colors.black),),
                //       ],
                //     )
                // ),

                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const login()),
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.person,color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("LOG IN",style: TextStyle(color: Colors.black),),
                    ],
                  ),
                )


                // Spacer(),
                // IconButton(
                //     onPressed: () {
                //
                //     },
                //     icon:Icon(Icons.close) )
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>home()));
              },
              child: const ListTile(
                title: Text("Home",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),),
                // trailing: Icon(Icons.expand_more),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailamazon()));
              },
              child: const ListTile(
                title: Text("Amazon",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),),
                // trailing: Icon999Icons.expand_more),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailstarbuck()));
              },
              child: const ListTile(
                title: Text("Starbuck",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),),
                // trailing: Icon(Icons.expand_more),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailkoi()));
              },
              child: const ListTile(
                title: Text("Koi",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),),
                // trailing: Icon(Icons.expand_more),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailbrown()));
              },
              child: const ListTile(
                title: Text("Brown",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),),
                // trailing: Icon(Icons.expand_more),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
