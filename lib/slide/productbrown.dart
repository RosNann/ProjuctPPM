
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:projectaddpp/model/model.dart';

import 'compernant.dart';

class productbrown extends StatefulWidget {
  final ind;
  const productbrown({super.key,this.ind});

  @override
  State<productbrown> createState() => _productbrownState();
}
class _productbrownState extends State<productbrown> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  Color(0xffFAF8E6),
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Product Overview"),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            // onTap: () {
            //
            // },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // slideclass(),

                Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF0DD),
                      // borderRadius: BorderRadius.circular(15)
                    ),
                    child: AnotherCarousel(images: [
                      AssetImage('${brown[widget.ind].image}'),
                      AssetImage('${brown[widget.ind].image1}'),
                      AssetImage('${brown[widget.ind].image2}'),
                    ],
                      dotSize: 7,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.transparent,
                      dotIncreasedColor: Colors.redAccent,
                      dotSpacing: 15.0,
                      moveIndicatorFromBottom: 180.0,
                      overlayShadow: true,
                      overlayShadowColors: Colors.grey,
                      overlayShadowSize: 0.2,
                      // borderRadius: true,
                    )
                ),




                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: compernant(),
                ),
                // const SizedBox(height: 5,),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 130,
                        child: quantity == 0
                            ? TextButton(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xff0E6734),
                            ),

                            height: 30,
                            alignment: Alignment.center,
                            child: const Text(
                              'Add Item',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        )
                            : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  quantity--;
                                });
                              },
                            ),
                            Text(quantity.toString()),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      buttonSoldOUT(),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                letterclass(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}








