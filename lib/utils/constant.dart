import 'dart:ui';

import 'package:flutter/material.dart';

class Constant {
 static Color bgColor = const Color(0xffF2F2F8);
 static Color gColor =  Colors.green;
 static String logo = "assets/images/logo.png" ;


}

void push( BuildContext context , screen){
 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>screen)) ;
}

void pushReplacement( BuildContext context , screen){
 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>screen)) ;
}