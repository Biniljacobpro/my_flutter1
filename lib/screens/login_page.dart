import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter1/screens/home.dart';
import 'package:my_flutter1/screens/signup_page.dart';

class Login extends StatelessWidget {
  //for fetching values from textfield
  final uname_ctrl=TextEditingController();
  final pwd_ctrl=TextEditingController();

  String username="binil@gmail.com";
  String password="12345678";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Login",style: TextStyle(fontSize: 30,)),
        ),
        body: Column(
            children: [
              Image.asset("assets/images/letters_love_icon.png",height: 100,
                  width: 120),
              Text("Soulmate Chatter",style: GoogleFonts.ephesis(color: Colors.black,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: uname_ctrl,
                  decoration: InputDecoration(
                    hintText: "Username",
                    helperText: "Username should be an Email",
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: pwd_ctrl,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: "Password",
                      helperText: "Password should be atleast  8 characters",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                if(uname_ctrl.text !="" && pwd_ctrl.text !=""){
                  if(uname_ctrl.text == username && pwd_ctrl.text == password ){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Username or password is incorrect")));
                  }

                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                      content: Text("Username and password should not be empty")));
                }
              },
                  child: Text("Login")),
              TextButton(onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Signup() ));
              },
                  child: Text("\nNot a User! Register here",style: TextStyle(fontSize: 10,),
              ))
            ]
        )
    );
  }
}