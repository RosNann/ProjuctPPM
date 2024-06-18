import 'package:flutter/material.dart';
import 'package:projectaddpp/slide/productbrown.dart';
import 'package:projectaddpp/widgets/drawer.dart';
import 'package:projectaddpp/widgets/test.dart';

import '../model/model.dart';
import '../slide/purchase.dart';

class ditailbrown extends StatefulWidget {
  const ditailbrown({super.key});

  @override
  State<ditailbrown> createState() => _ditailbrownState();
}

class _ditailbrownState extends State<ditailbrown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF8E6),
      appBar: AppBar(
        backgroundColor: Color(0xff104924),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title:Container(
          height: 60,
          width: 200,
          padding: EdgeInsets.symmetric(horizontal:5),
          child: Image.asset("images/logoshop1.jpg",),
        ),
        actions:const [
          Icon(Icons.shopping_cart,size: 25,color: Colors.white,),
          SizedBox(width: 10,)
        ],
        toolbarHeight:80,
        // bottom: PreferredSize(
        //     preferredSize: const Size.fromHeight(50),
        //     child: Container(
        //       height: 70,
        //       width: 380,
        //       alignment: Alignment.center,
        //       child:Container(
        //         height: 50,
        //         width: double.infinity,
        //         // color: Colors.pinkAccent,
        //         child: Row(
        //           mainAxisAlignment:MainAxisAlignment.center ,
        //           children: [
        //             Container(
        //               alignment: Alignment.center,
        //               padding: EdgeInsets.symmetric(horizontal: 5),
        //               height:60,
        //               width: 330,
        //               child: TextField(
        //                 decoration: InputDecoration(
        //                   hintText: "What are you looking for ?",
        //                   border: InputBorder.none,
        //                 ),
        //               ),
        //               color: Colors.white,
        //             ),
        //             Container(
        //               height: 60,
        //               width: 50,
        //               decoration: BoxDecoration(
        //                   color: Color(0xff0E6734),
        //                   borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
        //               ),
        //               child: Icon(Icons.search,size: 25,color: Colors.white,),
        //             ),
        //           ],
        //         ),
        //       ),
        //       // color: Colors.yellow,
        //     )),








      ),
      //drawer: drawer(),

      // body: GridView.count(
      //   primary: false,
      //   shrinkWrap: true,
      //   padding: const EdgeInsets.only(left: 10,right: 10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   crossAxisCount: 2,
      //   childAspectRatio: (1 /1.2),
      //
      //
      //
      //   children: <Widget>[
      //     InkWell(
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailamazon()));
      //       },
      //       child: Container(
      //         // padding: const EdgeInsets.all(8),
      //         // color: Colors.teal[100],
      //           height: 300,
      //           child:  Column(
      //             children: [
      //               Container(
      //                 // color: Colors.red,
      //                 width: double.infinity,
      //                 height: 175,
      //                 child:
      //                 ClipRRect(
      //                     borderRadius: BorderRadius.circular(5),
      //                     child: Image.asset("images/slide3.webp",fit: BoxFit.cover,)),
      //               ),
      //               SizedBox(height: 8,),
      //               Text("Amazon",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
      //             ],
      //           )
      //       ),
      //     ),
      //
      //
      //
      //     Container(
      //       // padding: const EdgeInsets.all(8),
      //       //   color: Colors.teal[100],
      //         height: 300,
      //         child:  Column(
      //           children: [
      //             Container(
      //               // color: Colors.red,
      //               width: double.infinity,
      //               height: 175,
      //               child:
      //               ClipRRect(
      //                   borderRadius: BorderRadius.circular(5),
      //                   child: Image.asset("images/slide3.webp",fit: BoxFit.cover,)),
      //             ),
      //             SizedBox(height: 8,),
      //             Text("Stabuck",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
      //           ],
      //         )
      //     ),
      //
      //     Container(
      //       // padding: const EdgeInsets.all(8),
      //       //   color: Colors.teal[100],
      //         height: 300,
      //         child:  Column(
      //           children: [
      //             Container(
      //               // color: Colors.red,
      //               width: double.infinity,
      //               height: 175,
      //               child:
      //               ClipRRect(
      //                   borderRadius: BorderRadius.circular(5),
      //                   child: Image.asset("images/slide3.webp",fit: BoxFit.cover,)),
      //             ),
      //             SizedBox(height: 8,),
      //             Text("Koi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
      //           ],
      //         )
      //     ),
      //
      //     Container(
      //       // padding: const EdgeInsets.all(8),
      //       //   color: Colors.teal[100],
      //         height: 300,
      //         child:  Column(
      //           children: [
      //             Container(
      //               // color: Colors.red,
      //               width: double.infinity,
      //               height: 175,
      //               child:
      //               ClipRRect(
      //                   borderRadius: BorderRadius.circular(5),
      //                   child: Image.asset("images/slide3.webp",fit: BoxFit.cover,)),
      //             ),
      //             SizedBox(height: 8,),
      //             Text("Broun",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
      //           ],
      //         )
      //     ),
      //
      //
      //
      //
      //
      //   ],
      // ),




      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            primary: false,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 3.3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: brown.length,
            itemBuilder: (context,int i){
              return InkWell(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          // color: Colors.red,
                          width: double.infinity,
                          height: 180,
                          child:
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>test()));
                            },
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset("${brown[i].image}",)
                            ),
                          ),
                        ),SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("${brown[i].title}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
                        ),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff0E6734),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                              child: InkWell(
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>productbrown(ind: i,)));
                                      },
                                      child: Text("EXPRESS PURCHASE",style: TextStyle(color: Colors.white),))),
                            ),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff3B3B3B),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 8),
                              child: Text("SOLD OUT",style: TextStyle(color: Colors.white,),),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }
        ),
      ),






    );
  }
}
