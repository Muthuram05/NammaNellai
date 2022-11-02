import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'forgotpass.dart';
import 'main.dart';
import 'signup.dart';
import 'home.dart';



bool t=true;
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email , _password;
  void signIn() async{
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context)=>const Center(child: CircularProgressIndicator(),)
    );
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword
        (email: _email, password: _password);
    }
    on FirebaseException catch (e){
      print(e);
      Fluttertoast.showToast(
          msg: e.message,
          backgroundColor: Colors.grey
      );
    }
    navigatorKey.currentState!.popUntil((route)=>route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: Form(
          key: formKey,
          child: Center(
              child:SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [


                    Container(
                      width: MediaQuery.of(context).size.width*0.80,
                      height: MediaQuery.of(context).size.height*0.55,
                      child: Card(
                        elevation: 25,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // if you need this
                          side: BorderSide(
                            color: Color(0xff2D4263).withOpacity(0.3),
                            width: 2,
                          ),
                        ),
                        child:  SingleChildScrollView(
                          child: Column(
                              children: [
                                SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                                const Center(
                                    child:
                                    Text("Sign In", style:TextStyle(
                                      fontFamily: "Railway",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ))
                                ),
                                SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  onSaved: (value){
                                    _email = value!;
                                  },
                                  validator: (email)=>
                                  email != null && !EmailValidator.validate(email) ? 'Enter a valid email ': null,
                                  decoration: const InputDecoration(
                                      labelText: "Email",

                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xff2D4263))
                                      )
                                  ),


                                ),
                              ),
                                SizedBox(height:MediaQuery.of(context).size.height*0.01,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: TextFormField(

                                onSaved: (value){
                                  _password = value!;
                                },
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return "Password";
                                    }
                                    else if(value.length < 8 || value.length > 15){
                                      return "Password Length is Incorrect";
                                    }
                                    return null;
                                  },
                                  obscureText: t,
                                  decoration: InputDecoration(
                                    labelText: "Password",

                                    suffixIcon: IconButton(
                                      icon: Icon(!t?Icons.remove_red_eye_outlined:Icons.remove_red_eye),
                                      onPressed: (){
                                        setState(() {
                                          t = !t;
                                        }
                                        );
                                      },
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xff2D4263))
                                    ),
                                  )
                              ),
                            ),
                                SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                                Container(
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Forget_p()));
                                    },
                                    child: const Text("Forgot password"),
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.height*0.03,),
                                Container(

                                  width: MediaQuery.of(context).size.width*0.30,
                                  height: MediaQuery.of(context).size.height*0.06,
                                  child:InkWell(
                                      onTap: (){
                                          if(formKey.currentState!.validate()){
                                            formKey.currentState!.save();
                                            signIn();
                                           }
                                      },
                                      child: const Card(
                                        color: Color(0xff700B97),
                                        child: Center(
                                          child: Text("SignIn",style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Poppins",
                                            fontSize: 20,

                                          ),),
                                        ),
                                      )
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.height*0.05,),

                              ],
                            ),
                        ),
                        ),
                      ),

                    SizedBox(height:MediaQuery.of(context).size.height*0.05,),
            Container(
              width: MediaQuery.of(context).size.width*0.80,
              height: MediaQuery.of(context).size.height*0.08,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                      side: BorderSide(
                        color: Color(0xff2D4263).withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    elevation: 25,
                    child:InkWell(
                      borderRadius: BorderRadius.circular(80) ,
                      onTap: (){},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Image(image: AssetImage("lib/assets/images/google logo-modified.png"),width: 20,height: 20,),
                            Text("Sign up with Google",
                              style: TextStyle(
                                  fontFamily: "Railway",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold

                              ),),
                          ],
                        ),
                      ),
                    )
                ),
            ),
                  ],
                ),
              )
          ),
        ),

    );

  }

}








