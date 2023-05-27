import 'package:flutter/material.dart';
import 'card.dart';



// //**************************************************FAN ORDER PAGE************************************************************
// class fanpage extends StatelessWidget {
//   const fanpage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("Fan", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//
//     );
//   }
// }
//
//
//
//
//
// //**************************************************TV ORDER PAGE************************************************************
// class tvpage extends StatelessWidget {
//   const tvpage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("TV", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
//
// //**************************************************AC ORDER PAGE************************************************************
// class acpage extends StatelessWidget {
//   const acpage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("AC", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
//
//
//
// //**************************************************PIPE ORDER PAGE************************************************************
// class  pipepage extends StatelessWidget {
//   const pipepage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("Pipe leakage", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//
//     );
//   }
// }
//
//
//
// //**************************************************TAP ORDER PAGE************************************************************
// class tap extends StatelessWidget {
//   const tap ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("Tap ", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//
//     );
//   }
// }
//
//
// //**************************************************WATER TANK ORDER PAGE************************************************************
// class tankpage extends StatelessWidget {
//   const tankpage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("Tank", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//
//     );
//   }
// }
//
//
// //**************************************************DOOR ORDER PAGE************************************************************
//
// class doorpage extends StatelessWidget {
//   const doorpage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("Doors", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
// //**************************************************COUPBOARD ORDER PAGE************************************************************
// class cupboardpage extends StatelessWidget {
//   const cupboardpage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("Cupboard", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
//
// //**************************************************FURNITURE ORDER PAGE************************************************************
// class furniturepage extends StatelessWidget {
//   const furniturepage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("Furniture", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
//
// //**************************************************MORE ORDER PAGE************************************************************
// class morepage extends StatelessWidget {
//   const morepage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("More", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
//
// //**************************************************ABOUT US PAGE************************************************************
//
//
// class about_us extends StatelessWidget {
//   const about_us({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:Container(child:
//         Column(
//           children: const [
//             Text("About us", style: TextStyle(
//                 fontFamily: 'Railway',
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//             ),),
//
//           ],
//         )
//         ),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//
//
//       ),
//     );
//   }
// }


class cardpage extends StatelessWidget {
  const cardpage({Key? key,required this.data,}) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Container(child:
        Column(
          children:[
            Text(data, style: TextStyle(
                fontFamily: 'Railway',
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),

          ],
        )
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
            onPressed: () => Navigator.pop(context),
          ),
        ),

      ),


    );
  }
}

class morepage extends StatefulWidget {
  const morepage({Key? key}) : super(key: key);


  @override
  _morepageState createState() => _morepageState();
}

class _morepageState extends State<morepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Container(child:
        Column(
          children:const [
            Text("More", style: TextStyle(
                fontFamily: 'Railway',
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),

          ],
        )
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.arrow_back_ios_rounded,color: Color(0xff413F42),),
            onPressed: () => Navigator.pop(context),
          ),
        ),

      ),
      body: Container(
          child:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                const Text("Select the type of Services",
                  style: TextStyle(
                      fontFamily: "JosefinSans"
                  ),),
                SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                Container(
                  padding: const EdgeInsets.fromLTRB(0.0,20.0, 0.0, 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                    Row(
                      children: [
                       
                        SizedBox(width: 12),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.30,
                            height:MediaQuery.of(context).size.height*0.135,
                            child: Stack(
                              children: <Widget>[
                                Image.asset("lib/assets/images/e-service.png"),
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.30,
                            height:MediaQuery.of(context).size.height*0.135,

                            child: Stack(
                              children: <Widget>[
                                Image.asset("lib/assets/images/p-sercive.png"),
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.30,
                            height:MediaQuery.of(context).size.height*0.135,
                            child: Stack(
                              children: <Widget>[
                                Image.asset("lib/assets/images/c_service-modified.png"),
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.30,
                            height:MediaQuery.of(context).size.height*0.135,

                            child: Stack(
                              children: <Widget>[
                                Image.asset("lib/assets/images/mason-img3.png"),
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

                SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.90,
                    child: TextFormField(
                      maxLines: 8,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText:"Enter your report",


                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),

    );
  }
}







