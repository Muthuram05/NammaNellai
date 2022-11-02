import "package:flutter/material.dart";


class orderpage extends StatefulWidget {
  const orderpage({Key? key,}) : super(key: key);
  @override
  _orderpageState createState() => _orderpageState();
}

class _orderpageState extends State<orderpage> {
  int counter = 0;
  void increment(){
    setState(() {
      counter++;
    });
  }
  void decrement() {
    if (counter == 0) {
      counter = 0;
    }
    else {
      setState(() {
        counter--;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Container(child:
        Column(
          children:  [
            Text("tittle", style: TextStyle(
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
      body: Column(
        children: [
          Container(

                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                                      Container(
                                        padding: EdgeInsets.fromLTRB(20.0,0,30.0, 0),
                                        child: Text("text",style: TextStyle(
                                          fontWeight: FontWeight.w400,)),
                                      ),


                                 Row(
                                   children: [
                                     Container( padding: EdgeInsets.fromLTRB(20.0,0,10.0, 0),child: Card(color: Colors.cyan, child: IconButton(onPressed: increment, icon:Icon(Icons.add)))),
                                     Container(  padding: EdgeInsets.fromLTRB(00.0,0,00.0, 0),child: Text("$counter")),
                                     Container(  padding: EdgeInsets.fromLTRB(10.0,0,30.0, 0),child: Card(color: Colors.cyan, child:IconButton(onPressed: decrement, icon: Icon(Icons.minimize_rounded)),)),
                                   ],
                                 )],


                                  ),






                        Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                      ],
                    ),
                  ),
                )
              ),
        ],
      ),


    );
  }
}



