import 'package:flutter/material.dart';
import 'page.dart';
import 'order.dart';

class Data{
  String txt1;
  String txt2;
  String txt3;
  Data({ required this.txt1,required this.txt2,required this.txt3});
}

//**************************************************SERVICE CARD************************************************************
class service extends StatelessWidget {
  const service({Key? key, required this.name,required this.image}) : super(key: key);
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child:
     SizedBox(
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child:
                  Image.asset(image),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(name,style: TextStyle(

                ),),
              ),
              Container(

                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
        ),

    );
  }
}



class cardlist extends StatelessWidget {
  cardlist({Key? key, required this.c1img, required this.c2img, required this.c3img, required this.c1txt, required this.c2txt, required this.c3txt, required this.title}) : super(key: key);
  final String c1img;
  final String c2img;
  final String c3img;

  final String title;
  final String c1txt;
  final String c2txt;
  final String c3txt;
  @override
  get data => Data(txt1: c1txt, txt2: c2txt, txt3: c3txt);
  Widget build(BuildContext context) {
    return Container(
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                //**************************************************TITTLE GIF************************************************************
                Container(
                    width:double.infinity,


                    child:Column(

                      children: [

                        Text( title,style: const TextStyle(
                          fontFamily: "Railway",
                          fontWeight:FontWeight.bold,
                          fontSize: 30,
                        ),)
                      ],
                    )
                ),
                SizedBox(height: 20,),

                //************************************************** CARD LIST CONTAINER************************************************************
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //**************************************************FIRST ROW************************************************************
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [


                          //**************************************************FIRST BOX************************************************************
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                children:[
                                  Card(
                                    child: SizedBox(
                                      width: 80,
                                      height: 80,
                                      child:  Stack(
                                        children: <Widget>[
                                          Image.asset(c1img),
                                          Positioned.fill(
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> cardpage(data: c1txt,)));
                                                  data: data;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ),

                                  Text(c1txt)
                                ]
                            ),
                          ),



                          //**************************************************SECOND BOX************************************************************

                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                children:[
                                  Card(
                                    child: SizedBox(
                                      width: 80,
                                      height: 80,
                                      child:  Stack(
                                        children: <Widget>[
                                          Image.asset(   c2img),
                                          Positioned.fill(
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> cardpage(data: c2txt,)));
                                                  data: data;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ),

                                  Text( c2txt)
                                ]
                            ),
                          ),
                        ],

                        //**************************************************SECCOND ROW************************************************************
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //**************************************************THIRD BOX************************************************************
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                children:[
                                  Card(
                                    child: SizedBox(
                                      width: 80,
                                      height: 80,
                                      child:  Stack(
                                        children: <Widget>[
                                          Image.asset(  c3img),
                                          Positioned.fill(
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> cardpage(data: c3txt,)));
                                                  data: data;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ),

                                  Text( c3txt)
                                ]
                            ),
                          ),




                          //**************************************************FOURTH BOX************************************************************

                          Container(

                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                children:[
                                  Card(

                                    child: Container(
                                      color: Colors.grey,
                                      width: 80,
                                      height: 80,
                                      child:Stack(
                                        children: <Widget>[
                                          Center(child: Icon(Icons.add)),
                                          Positioned.fill(
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> morepage()));
                                                  data: data;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text("More")
                                ]
                            ),
                          ),








                        ],

                      ),
                    ]
                ),
              ]
          ),
        )
    );

  }
}


//************************************************************c_list**************************************


