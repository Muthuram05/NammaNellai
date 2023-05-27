import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login.dart';
import 'main.dart';
bool t=true;



class Signup extends StatefulWidget {
  const  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return  Center(
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                children: [

                  SizedBox(
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
                      child: SingleChildScrollView(
                        child: Column (
                            children: [
                              SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                              const Center(
                                    child: Text("Sign up", style:TextStyle(
                                      fontFamily: "Railway",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 40,
                                    )
                                    ),

                              ),
                              SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.6,
                            child: TextFormField(
                              validator: (email)=>
                              email != null && !EmailValidator.validate(email) ? 'Enter a valid email ': null,
                              controller: emailController,
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
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return "Please Enter Password";
                                      }
                                      else if(value.length < 8 || value.length > 15){
                                        return "Password Length is Incorrect";
                                      }
                                      return null;
                                    },
                                    controller: passwordController,
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
                              SizedBox(height:MediaQuery.of(context).size.height*0.10,),
                              Container(
                                width: MediaQuery.of(context).size.width*0.30,
                                height: MediaQuery.of(context).size.height*0.06,
                                child: Card(
                                  color: Color(0xff700B97),

                                  child: InkWell(

                                    onTap:(){
                                      newUser();
                                    },
                                    child: const Center(
                                      child: Text("Sign up",style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 20,

                                      ),),
                                    ),
                                  ),
                                ),
                              ),







                            ],
                          ),
                      ),
                      ),
                    ),
                  SizedBox(height:MediaQuery.of(context).size.height*0.05,),

                  const s_google(),

                ],
              ),
            ),
          )

    );

  }

  void newUser() async{
    final isValid = formKey.currentState!.validate();
    if(!isValid) return;
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context)=>const Center(child: CircularProgressIndicator(),)
    );
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(

          email: emailController.text.trim(),
          password: passwordController.text.trim()
      );
    }on FirebaseAuthException catch (e){
      print(e.message);
      Fluttertoast.showToast(
          msg: e.message.toString(),
          backgroundColor: Colors.grey,
      );
      // Utils.showSnackBar(e.message);
    }
    navigatorKey.currentState!.popUntil((route)=>route.isFirst);

  }

}


//------------------------------------------------------------------------- singup with google -------------------------------------------------------------
class s_google extends StatelessWidget {
  const s_google({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
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
      );
  }
}











