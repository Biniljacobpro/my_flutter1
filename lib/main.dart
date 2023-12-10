import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Firstprogram()  ///intial page
  ));
}
class Firstprogram extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("My First Program",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,color: Colors.black54),),
      ),
          body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image(image: AssetImage("assets/images/bird.png"),height: 100,width:100),
                Image.asset("assets/images/flower_icon.png",height: 100,width:100),
                Row(mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Icon(Icons.favorite,color: Colors.redAccent,size:30.0,),
                    Icon(Icons.person,color: Colors.blueAccent,size:30.0,),
                  ],
                ),
                Text("My Application",style: TextStyle(fontSize:20.0,color: Colors.deepPurpleAccent),)
              ],
            ),
          ),
    );
  }

}