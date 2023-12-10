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
        title: Text("Image Viewer",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.deepPurple,backgroundColor: Color.fromRGBO(255, 255, 255, 1)),),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Images",style: TextStyle(fontSize: 20)),
            Image(image: AssetImage("assets/images/bird.png"),height: 100,width:100),
            Image.asset("assets/images/flower_icon.png",height: 100,width:100),
            Image.network("https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dHJlZXxlbnwwfHwwfHx8MA%3D%3D")
          ],
        ),
      ),
    );
  }

}