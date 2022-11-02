import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'nav.dart';


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //*****************************************************APP BAR***********************************************
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Container(child:
        Column(
          children: const [
            Text("Namma  Scad", style: TextStyle(
              fontFamily: 'Railway',
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),

          ],
        )
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.menu,color: Color(0xff413F42),),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
        actionsIconTheme: IconThemeData(color: Colors.grey, size: 20),
      ),


      //*****************************************************BODY***********************************************


      body:page(),


      drawer: Navbar() ,
    );
  }
}






class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [



          //********************************************SCROLL VIEW****************************************
          Container(
            padding: EdgeInsets.fromLTRB(0.0,20.0, 0.0, 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: 200,
                      height: 120,

                      child: Center(
                        child: Stack(
                          children: <Widget>[
                            Image.asset("lib/assets/images/scad.png"
                                ""),
                            Positioned.fill(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),



                    ),
                  ),
                  SizedBox(width: 12),
                  Card(
                    child: SizedBox(
                      width: 200,
                      height: 120,

                      child: Stack(
                        children: <Widget>[
                          Image.asset("lib/assets/images/Electrician-Header.png"),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ],
                      ),



                    ),
                  ),
                  SizedBox(width: 12),
                  Card(
                    child: SizedBox(
                      width: 200,
                      height: 120,

                      child: Stack(
                        children: <Widget>[
                          Image.asset("lib/assets/images/carpenter.jpg"),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ],
                      ),



                    ),
                  ),
                  SizedBox(width: 12),
                  Card(

                    child: SizedBox(
                      width: 200,
                      height: 120,

                      child: Stack(
                        children: <Widget>[
                          Image.asset("lib/assets/images/plumber.jpg"),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ],
                      ),



                    ),
                  ),
                  SizedBox(width: 12),
                  Card(

                    child: SizedBox(
                      width: 200,
                      height: 120,

                      child: Stack(
                        children: <Widget>[
                          Image.asset("lib/assets/images/mason-head.jpg"),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ],
                      ),



                    ),
                  ),


                ],
              ),




            ),
          ),


          //*************************************************TEXT SERVICE**************************
          Container(
            padding: EdgeInsets.all(10.0),
            height: 40,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Services",
                  style: TextStyle(
                      fontFamily: "JosefinSans"
                  ),),
                Icon(Icons.more_horiz)
              ],
            ),
          ),



          //********************************************Service cards**************************
          Container(
            child:
            Column(

              children: [
                InkWell(
                  onTap: (){


                    showDialog(
                        context: context,builder: (_) => AlertDialog(


                      content: cardlist( c1img: "lib/assets/images/Fan.jpg", c2img: "lib/assets/images/tv.jpg", c3img: "lib/assets/images/ac.png", c1txt: "Fan", c2txt: "TV", c3txt: "AC", title: "Electrical",),




                    ) );


                  },
                  child:
                  service(name: "Electrical Service", image: "lib/assets/images/e-service.png"),
                ),
                SizedBox(width: 15,),
                InkWell(
                  onTap: (){


                    showDialog(
                        context: context,builder: (_) => AlertDialog(

                      content: cardlist( c1img: "lib/assets/images/tap.png", c2img: "lib/assets/images/pipe.png", c3img: "lib/assets/images/watertank.jpg", c1txt: "Tap", c2txt: "Pipe leakage", c3txt:"Water Tank",title: "Plumbing",),

                    ) );


                  },
                  child:
                  service(name: "Plumbing Service", image:"lib/assets/images/p-sercive.png"),
                ),
                SizedBox(width: 15,),
                InkWell(
                  onTap: (){


                    showDialog(
                        context: context,builder: (_) => AlertDialog(



                      content: cardlist(c1img: "lib/assets/images/door.png", c2img: "lib/assets/images/cubord.png", c3img: "lib/assets/images/table.png", c1txt: "Door", c2txt: "Cupboard", c3txt: "Furniture", title: "Carpentry",),


                    ) );


                  },
                  child:
                  service(name: "Carpentery Service", image:"lib/assets/images/c_service-modified.png"),
                ),
                SizedBox(width: 15,),
                InkWell(
                  onTap: (){


                    showDialog(
                        context: context,builder: (_) => AlertDialog(



                      content: cardlist( c1img: "lib/assets/images/mason-img2.png", c2img: "lib/assets/images/mason-img3.png", c3img: "lib/assets/images/mason-img4.png", c1txt: "Crack repairs", c2txt: "Coatings", c3txt: "Tiles fixing" , title: "Mason",),


                    ) );


                  },
                  child:
                  service(name: "Mason Service", image:"lib/assets/images/m-service.png"),
                ),

              ],
            ),
          ),


        ]
    );
  }
}














