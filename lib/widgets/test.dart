import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {


  void main() {
    Map<String, Map<String, dynamic>> users = {
      "user1": {
        "name": "Alice",
        "age": 30,
        "email": "alice@example.com",
      },
      "user2": {
        "name": "Bob",
        "age": 25,
        "email": "bob@example.com",
      },
    };

    users.forEach((userId, userDetails) {
      print("User ID: $userId");
      // userDetails.forEach((key, value) {
      //   print("  $key: $value");
      // });
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("Test"),
      ),
    );
  }
}
