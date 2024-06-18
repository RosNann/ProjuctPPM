import 'package:flutter/material.dart';

class singup extends StatefulWidget {
  const singup({super.key});

  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff104924),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  shrinkWrap: true,


                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 70,
                        child: Image.asset("images/logoshop1.jpg",),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      // color: Colors.red,
                      width: double.infinity,
                      child:  const Text("Create your Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                    ),

                    const SizedBox(height: 25,),


                    Container(
                      alignment: Alignment.center,
                      padding:const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      height:50,
                      child:const TextField(
                        style:TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15,),



                    Container(
                      alignment: Alignment.center,
                      padding:const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      height:50,
                      child: const TextField(
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15,),


                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      height:50,
                      child:const TextField(
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),


                    const SizedBox(height: 15,),


                    Container(

                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff0E6734),
                      ),
                      child: TextButton(onPressed: (){},
                          child:const Text("Sing up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400))
                      ),
                    ),


                    const SizedBox(height: 40,),
                    const Center(
                      child: Text("- Or sign in with -",style: TextStyle(color: Colors.white),),
                    ),

                    const SizedBox(height: 20,),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:const EdgeInsets.all(10),
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),

                          child: Image.asset("images/logogoogle.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding:const EdgeInsets.all(6),
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Image.asset("images/logofacebook.webp"),
                        ),
                      ],
                    ),






                  ],
                ),
              ),
            ),

            Positioned(
              left: 8,
              top:8,
              child: IconButton(onPressed: (){
              Navigator.pop(context);
                },icon: Icon(Icons.arrow_back,color: Colors.white,)),)

          ],
        ),
      ),
    );
  }
}
