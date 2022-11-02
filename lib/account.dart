import 'package:flutter/material.dart';

class ac_page extends StatelessWidget {
  const ac_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Container(child:
        Column(
          children: const [
            Text("Account", style: TextStyle(
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Center(
              child:Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Stack(
                  children: [
                    CircleAvatar(
                    radius:MediaQuery.of(context).size.width*0.20,
                    backgroundImage: AssetImage("lib/assets/images/welcome.gif"),


                  ),

                    Positioned(
                        right: 0,
                        bottom:0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          color:  Colors.black45,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),















            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Text("Welcome", style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                color: Colors.black

            ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height*0.1,
              child: Card(
                shadowColor:  Colors.blueGrey,

                elevation: 20,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.handyman_sharp, color:  Color(
                        0xffa830d9),size:35,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.history_outlined, color:  Color(
                        0xffa830d9),size:35)),
                  ],
                )
              ),
            )

          ],
        ),
      ),
    );
  }
}
