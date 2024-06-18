import 'package:flutter/material.dart';
import 'package:projectaddpp/widgets/drawer.dart';
import 'package:projectaddpp/widgets/home.dart';
import 'package:projectaddpp/widgets/login.dart';
import 'package:projectaddpp/widgets/slide.dart';
import 'package:projectaddpp/widgets/test.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: home(),
      )
  );
}