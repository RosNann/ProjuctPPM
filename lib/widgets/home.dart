import 'package:flutter/material.dart';
import 'package:projectaddpp/model/model.dart';
import 'package:projectaddpp/widgets/drawer.dart';
import 'package:projectaddpp/widgets/reenditailkoi.dart';
import 'package:projectaddpp/widgets/screenditailamazon.dart';
import 'package:projectaddpp/widgets/screenditailbrown.dart';
import 'package:projectaddpp/widgets/screenditailstarbuck.dart';
import 'package:projectaddpp/widgets/slide.dart';
import 'package:projectaddpp/widgets/test.dart';

import '../Card/Card_screen.dart';
import '../slide/productbestseller.dart';
import '../slide/purchase.dart';

class home extends StatefulWidget {
  const home({super.key});



  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {



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
        actions:[

          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CardScreen()));
          },
            icon: Icon(Icons.shopping_cart,size: 25,color: Colors.white,),),
          SizedBox(width: 10,)
        ],
        toolbarHeight:80,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              height: 70,
              width: 380,
              alignment: Alignment.center,
              child:Container(
                height: 50,
                width: double.infinity,
                // color: Colors.pinkAccent,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height:60,
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for ?",
                          border: InputBorder.none,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    Container(
                      height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff0E6734),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                      ),
                      child: Icon(Icons.search,size: 25,color: Colors.white,),
                    ),
                  ],
                ),
              ),
              // color: Colors.yellow,
            )),








      ),
      drawer: drawer(),
      body: ListView(
        primary: true,
        shrinkWrap: true,

        children: [

          slide(),
          //
          // Padding(
          //     padding: EdgeInsets.symmetric(vertical: 10,),
          //   child:
          //
          // ),
          





          // GridView.builder(
          //   padding: EdgeInsets.symmetric(horizontal: 10),
          //     primary: false,
          //     shrinkWrap: true,
          //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 200,
          //         childAspectRatio: 1.7 / 1.7,
          //         crossAxisSpacing: 10,
          //         mainAxisSpacing: 10),
          //
          //     itemCount: listcategory.length,
          //     itemBuilder: (context,int i){
          //       return InkWell(
          //         onTap: (){
          //           Navigator.push(context, MaterialPageRoute(builder: (context)=>test()));
          //         },
          //         child: Container(
          //           // color: Colors.blue,
          //             child: Column(
          //               children: [
          //                 Container(
          //                   // color: Colors.red,
          //                   width: double.infinity,
          //                   height: 155,
          //                   child:
          //                   ClipRRect(
          //                       borderRadius: BorderRadius.circular(5),
          //                       child: Image.asset("${listcategory[i].image}",fit: BoxFit.cover,)),
          //                 ),
          //                 SizedBox(height: 5,),
          //                 Text("${listcategory[i].title}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
          //               ],
          //             )
          //         ),
          //       );
          //     }
          // ),


          GridView.count(
            primary: false,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 10,right: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: (1 /1.2),



            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailamazon()));
                },
                child: Container(
                  // padding: const EdgeInsets.all(8),
                  // color: Colors.teal[100],
                  height: 300,
                  child:  Column(
                                  children: [
                                    Container(
                                      // color: Colors.red,
                                      width: double.infinity,
                                      height: 175,
                                      child:
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Image.asset("images/logoamazon.webp",fit: BoxFit.cover,)),
                                    ),
                                    SizedBox(height: 8,),
                                    Text("Amazon",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
                                  ],
                                )
                ),
              ),



              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailstarbuck()));
                },
                child: Container(
                  // padding: const EdgeInsets.all(8),
                  //   color: Colors.teal[100],
                    height: 300,
                    child:  Column(
                      children: [
                        Container(
                          // color: Colors.red,
                          width: double.infinity,
                          height: 175,
                          child:
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset("images/starbucks-logo.gif",fit: BoxFit.cover,)),
                        ),
                        SizedBox(height: 8,),
                        Text("Starbuck",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
                      ],
                    )
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailkoi()));
                },
                child: Container(
                  // padding: const EdgeInsets.all(8),
                  //   color: Colors.teal[100],
                    height: 300,
                    child:  Column(
                      children: [
                        Container(
                          // color: Colors.red,
                          width: double.infinity,
                          height: 175,
                          child:
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset("images/logokoi.jpg",fit: BoxFit.cover,)),
                        ),
                        SizedBox(height: 8,),
                        Text("Koi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
                      ],
                    )
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ditailbrown()));
                },
                child: Container(
                  // padding: const EdgeInsets.all(8),
                  //   color: Colors.teal[100],
                    height: 300,
                    child:  Column(
                      children: [
                        Container(
                          // color: Colors.red,
                          width: double.infinity,
                          height: 175,
                          child:
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset("images/logobrown.jpg",fit: BoxFit.cover,)),
                        ),
                        SizedBox(height: 8,),
                        Text("Broun",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
                      ],
                    )
                ),
              ),





            ],
          ),













          //Promotion


          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("PROMOTION",style: TextStyle(fontSize: 25,color: Colors.brown,fontWeight: FontWeight.w500,decoration: TextDecoration.underline,fontFamily: "font1"),),
            ),
          ),

          ListView.builder(
            primary: false,
              shrinkWrap: true,
              itemCount: promotion.length,
              itemBuilder: (context,int i){
                return Container(
                  width: double.infinity,
                  height: 180,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 3.5,horizontal: 7),
                  child: Image.asset("${promotion[i].image}",fit: BoxFit.cover,),
                );
              }
          ),


          //Bestseller
          SizedBox(height: 15,),
          Center(
            child: Text("BEST SELLER",style: TextStyle(fontSize: 25,fontFamily:"font1",fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 15,),


          //Bestseller
          Container(
            height: 370,
            width: double.infinity,
            // color: Colors.blue,
            child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bestseller.length,
                itemBuilder: (context,int i){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>test()));
                    },
                    child: Container(
                      // color: Colors.blue,
                      height: double.infinity,
                        width: 250,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: Colors.grey.shade300
                            ),
                          color: Color(0xffFAF8E6),
                        ),
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              // color: Colors.red,
                              width: double.infinity,
                              height: 200,
                              child:
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(2),
                                  child: Image.asset("${bestseller[i].image}",fit: BoxFit.cover,)),
                            ),
                            SizedBox(height: 3,),
                            Container(
                                width:double.infinity ,
                                child: Text("${bestseller[i].name}",style: TextStyle(fontSize: 20,color: Colors.brown),)
                            ),


                            Spacer(),

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
                                          onTap: () {
                                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
                                          },
                                          child: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>productseller(ind: i,)));
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
                        )
                    ),
                  );
                }
            ),
          ),











        ],
      ),
    );
  }
}
