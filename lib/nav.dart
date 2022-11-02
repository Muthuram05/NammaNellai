import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'account.dart';

import 'page.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Drawer(
        child:ListView(
          children: [
             UserAccountsDrawerHeader(accountName:  Text("UserName",style:TextStyle(color: Colors.black) ,),
              accountEmail:  Text(user.email!,style: TextStyle(fontSize: 10,color: Colors.black45),),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('lib/assets/images/home3.gif'),
                    fit: BoxFit.fill,)

              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("My Account",style: TextStyle(
                fontWeight: FontWeight.w400,
              ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> ac_page()));

                },
            ),
            ListTile(
              leading: Icon(Icons.date_range_outlined),
              title: Text("My Bookings",style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),),
              onTap: () {


              },
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign Out",style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),),
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
            ),


            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),

            ListTile(

              title: Text("About us", style: TextStyle(
                  fontFamily: 'Railway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
              onTap: () {

                },
            ),


          ],

        )
    );
  }
}


