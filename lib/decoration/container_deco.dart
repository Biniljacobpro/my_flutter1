import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: Containerdec()  ///intial page
   ));
}
class Containerdec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Decoration"),
      ),
      body: Center(
        child: Container(
         height: 500,
          width: 600,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/background.jpg"),fit: BoxFit.fill)),
          //color: Colors.amber,
            child: Icon(Icons.favorite,size:50),
        ),
      ),
    );
  }
}