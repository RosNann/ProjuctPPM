import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projectaddpp/widgets/test.dart';
class slide extends StatefulWidget {
  const slide({super.key});

  @override
  State<slide> createState() => _slideState();
}

class _slideState extends State<slide> {
  List imageList=[
    {"id":1,"image_path":"images/slide1.webp","text":"CONFIREL IS WAITING FOR YOU!","text3":"Meet us this Sunday at the Asian Street Food Festival\nat The Vincennes pagoda","buttom":"LEARN MORE"},
    {"id":2,"image_path":"images/logoshop2.jpg","text":"EXCEPTIONAL OFFER","text3":"Confirel offers you free delivery in France and Europe for its launch!","buttom":"LEARN MORE"},
    {"id":3,"image_path":"images/slide3.webp","text":"WHO ARE WE","text3":"Come and discover Confirel, a player committed to the\nprotection and enhancement of peasant agriculture in Cambodia since 2001!","buttom":"SEE MORE"},
    {"id":4,"image_path":"images/slide4.webp","text":"NEWS","text3":"Confirel strengthens its social involvement in Cambodia","buttom":"LEARN MORE"},
    {"id":5,"image_path":"images/slide5.webp","text":"KIRUM HEALTH INFUSION \nDISCOVERY BOX","text3":"Discover all of our infusions at low prices!","buttom":"DISCOVER"},
  ];
  final CarouselController carouselController=CarouselController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      child:  Stack(
        children: [
          InkWell(
              onTap: (){
                print(currentIndex);
              },
              child:CarouselSlider(
                items: imageList.map((item) =>Stack(
                    children: [
                      Image.asset(item["image_path"],fit: BoxFit.cover,width: double.infinity),
                      Positioned(
                          child: Container(
                            height: 240,
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            width:double.infinity,
                            // color: Colors.pinkAccent,
                            // alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Text(item["text"],style: TextStyle(fontSize: 22,color: Colors.white),textAlign:TextAlign.center,),
                                Text(item["text3"],style: TextStyle(color: Colors.white,fontSize: 14,),textAlign:TextAlign.center,),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>test()));
                                  },
                                  child: Container(
                                    height:30,
                                    width: 110,
                                    alignment: Alignment.center,
                                    color:Color(0xff0E6734),
                                    child: Text(item["buttom"],style: TextStyle(color: Colors.white,fontSize: 12),),
                                  ),
                                )
                              ],
                            )
                          )
                      )
                    ],
                ),
                ).toList() ,
                carouselController: carouselController,
                options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index,reason){
                      setState((){
                        currentIndex=index;
                      });
                    }
                ),

              )
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: imageList.asMap().entries.map((entry){
                  // print(entry);
                  // print(entry.key);
                  return GestureDetector(
                    onTap: ()=>carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex==entry.key?17:7,
                      height: 7.0,
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex==entry.key?Colors.red:Colors.blue
                      ),
                    ),
                  );
                }).toList(),
              )
          )
        ],
      ),
    );
  }
}
