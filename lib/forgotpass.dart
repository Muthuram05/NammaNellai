import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Forget_p extends StatelessWidget {
  const Forget_p({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ForgotPassword()
    );
  }
}




class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.80,
          height: MediaQuery.of(context).size.height*0.55,
          child:
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150)
                  ),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width*0.20,
                    backgroundImage: AssetImage("lib/assets/images/forget_p.gif"),

                  ),
                ),
                SizedBox(

                  height: MediaQuery.of(context).size.height*0.06,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.80,

                  child: TextFormField(

                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,

                    validator: (email)=>
                    email != null && !EmailValidator.validate(email) ? 'Enter a valid email ': null,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.account_circle),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2D4263))
                        )
                    ),




                  ),
                ),
                SizedBox(

                  height: MediaQuery.of(context).size.height*0.06,
                ),
                FlatButton(
                    color: Color(0xff700B97),
                    onPressed: resetPassword, child: Container(
                  width: MediaQuery.of(context).size.width*0.50,
                  height: MediaQuery.of(context).size.height*0.06,
                      child: Center(
                        child: Text("Reset Password",style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w200,
                  fontSize: 15,
                ),),
                      ),
                    ))
                // TextButton(onPressed: (){
                //   resetPassword();
                // },
                    // child: const Text("Reset Password")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void resetPassword() async {
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text.trim());
      Fluttertoast.showToast(
          msg: "Password Reset Email Sent",
          backgroundColor: Color(0xff816797)
      );
    }
    on FirebaseException catch (e){
      Fluttertoast.showToast(
          msg: e.message,
          backgroundColor: Colors.grey
      );
    }

  }
}
