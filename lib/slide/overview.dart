import 'package:flutter/material.dart';

import 'compernant.dart';
class overview extends StatefulWidget {
  const overview({super.key});

  @override
  State<overview> createState() => _overviewState();
}

class _overviewState extends State<overview> {
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
          title: const Text("Product Overview"),
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

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: compernant(),
                ),
                // const SizedBox(height: 5,),
                SizedBox(height: 10,),
                letterclass(),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 167,
                        child: quantity == 0
                            ? TextButton(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xff0E6734),
                            ),
                            height: 55,
                            width: double.infinity,
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
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: Text("YOU MAY ALSO LIKE",style: TextStyle(fontSize: 20),),
                ),SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
