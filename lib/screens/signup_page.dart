import 'package:flutter/material.dart';

import 'home.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignUpState();
}

  class _SignUpState extends State<Signup> {
  final formkey=GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(title: Text("Signup")),
          body: Form(
                key: formkey,

                child: Column(
                  children: [
                    Image.asset("assets/images/letters_love_icon.png",height: 100,
                        width: 120),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                   validator: (email){
                     if(email!.isEmpty || !email.contains('@')){
                       return"Enter a valid email id";
                     }
                     else return null;
                    },
                          decoration: InputDecoration(
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                    ),
                    ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                     var isValid=formkey.currentState!.validate();
                     if(isValid==true){
                       Navigator.of(context)
                           .push(MaterialPageRoute(builder: (context) => Home()));
                     }
      }, child: Text("Signup"))
                      ],
                ))


      );
    }
  }