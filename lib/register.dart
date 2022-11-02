import 'package:flutter/material.dart';
import 'package:scad/signup.dart';

import 'login.dart';
bool signin = false;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  void changeState(){
    if(signin){
      setState(() {
        signin = false;
      });

    }
    else {
      setState(() {
        signin = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width*0.80,
            child: Column
              (
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Row(
                  children: [
                    FlatButton(onPressed: changeState , child: Container(
                      width:MediaQuery.of(context).size.width*0.30,
                      height: MediaQuery.of(context).size.height*0.05,
                      child:InkWell(
                          onTap: (){

                            changeState();
                          },
                          child: Card(
                            color:signin==true ?  Color(0xff700B97) : Colors.grey,
                            child: const Center(
                              child: Text("Sigin",style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 20,

                              ),),
                            ),
                          )
                      ),
                    ),),
                    FlatButton(

                      onPressed: changeState , child: Container(

                      width:MediaQuery.of(context).size.width*0.30,
                      height: MediaQuery.of(context).size.height*0.05,
                      child:InkWell(
                          onTap: (){

                            changeState();
                          },
                          child: Card(
                            color:signin!=true ?  Color(0xff700B97) : Colors.grey,
                            child: Center(
                              child: Text("Signup",style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 20,

                              ),),
                            ),
                          )
                      ),
                    ),)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                signin == true ?Loginpage(): Signup(),

                
              ],

            ),
          ),
        ),
      )
      
    );
  }
}



