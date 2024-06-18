
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectaddpp/widgets/home.dart';
import 'package:projectaddpp/widgets/singup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff104924),
      body: SafeArea(
        child: Center(
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
                SizedBox(height: 30,),
                Container(
                  // color: Colors.red,
                  width: double.infinity,
                  child:  const Text("Login to your Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                ),

                SizedBox(height: 25,),


                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  height:50,
                  child: TextField(
                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                    ),
                  ),
                ),

                SizedBox(height: 15,),



                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  height:50,
                  child: TextField(
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

                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff0E6734),
                  ),
                  child: TextButton(onPressed: (){},
                      child: Text("Sing in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400))
                  ),
                ),


                SizedBox(height: 40,),
                Center(
                  child: Text("- Or sign in with -",style: TextStyle(color: Colors.white),),
                ),

                SizedBox(height: 20,),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        // signInWithGoogle();
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),

                        child: Image.asset("images/logogoogle.png"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
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

                SizedBox(height: 50,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Colors.grey.shade300),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>singup()));
                    }, child: Text("Sing up",style: TextStyle(color: Colors.blue),))
                  ],
                )





              ],
            ),
          ),
        ),
      ),
    );
  }



  // signInWithGoogle() async{
  //
  //   GoogleSignInAccount? googleUser =await GoogleSignIn().signIn();
  //   GoogleSignInAuthentication? googleAuth=await googleUser?.authentication;
  //
  //   AuthCredential credential=GoogleAuthProvider.credential(
  //     accessToken:googleAuth?.accessToken,
  //     idToken:googleAuth?.idToken,
  //   );
  //
  //   UserCredential userCredential=await FirebaseAuth.instance.signInWithCredential(credential);
  //   print(userCredential.user?.displayName);
  // }







    // signInWithGoogle()async{
    //
    //
    //   final GoogleSignIn _googleSignIn= GoogleSignIn();
    //
    //   try{
    //     final GoogleSignInAccount? googleSignInAccount=await _googleSignIn.signIn();
    //
    //     if(googleSignInAccount != null){
    //       final GoogleSignInAuthentication googleSignInAuthentication=await
    //       googleSignInAccount.authentication;
    //
    //       final AuthCredential credential = GoogleAuthProvider.credential(
    //         idToken: googleSignInAuthentication.idToken,
    //         accessToken: googleSignInAuthentication.accessToken,
    //       );
    //       await _firebaseAuth.signInWithCredential(credential);
    //
    //     }
    //
    //   }catch(e){
    //
    //
    //   }
    //
    //
    // }





}

