import 'package:flutter/material.dart';
import 'package:projectaddpp/widgets/test.dart';

import '../model/model.dart';
import '../slide/purchase.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffFAF8E6),
      appBar: AppBar(
        backgroundColor:  Color(0xffFAF8E6),
        title: Text("Products"),),
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
            itemCount: bestseller.length,
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
                                child: Image.asset("${bestseller[i].image}",fit: BoxFit.cover,)
                            ),
                          ),
                        ),SizedBox(height: 5,),
                        Text("${bestseller[i].name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.brown),),
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
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newSlide()));
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
    )
    );
  }
}


