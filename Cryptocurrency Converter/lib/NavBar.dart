import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:ionicons/ionicons.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(23, 56, 149, 1),
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.message, size: 50,color: Colors.white,),
            title: Text('Feedback', style: TextStyle(color: Colors.white),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.star, size: 50,color: Colors.white,),
            title: Text('Rate Us', style: TextStyle(color: Colors.white),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.fact_check, size: 50, color: Colors.white,),
            title: Text('Terms and Conditions', style: TextStyle(color: Colors.white),),
            onTap: () => null,
          ),
          SizedBox(
            height: 400,
          ),
          Divider(color: Colors.white, thickness: 3,),
          ListTile(
            leading: Icon(Icons.facebook, size: 50, color: Colors.white,),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.email, size: 50, color: Colors.white,),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
