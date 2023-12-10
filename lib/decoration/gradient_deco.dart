import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: gradientdec()  ///intial page
  ));
}
class gradientdec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Container Gradient Decoration",style: TextStyle.bol,),
      ),
      body: Center(
        child: Container(
        width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.green,Colors.cyanAccent,Colors.yellow,Colors.greenAccent],
            begin: Alignment.bottomRight,end: Alignment.topLeft

          ),

          ),
            child: Icon(Icons.favorite,size:50,color: Colors.red,),
        ),
      ),
    );
  }
}