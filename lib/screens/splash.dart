import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_flutter1/screens/login_page.dart';
void main()
{
  runApp(MaterialApp(home : Splash(),));
}
class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}
  class _SplashState extends State<Splash>{
  @override
    void initState(){
    Timer(Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
  }
  @override
    Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/beach-unsplash.jpg"),fit: BoxFit.fill),

          ),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/letters_love_icon.png",
                height: 90,width: 90,),
                Text("Soulmate Chatter",style: GoogleFonts.ephesis(color: Colors.white,fontSize: 30),),
                Text("Find your Soulmate",style: GoogleFonts.caveat(color: Colors.white,fontSize: 15),)
              ],
            ),
          ),
          ),
        );

  }
  }