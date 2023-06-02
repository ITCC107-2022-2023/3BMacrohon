import 'package:flutter/material.dart';
import 'package:jerwin/NavBar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:jerwin/addpage.dart';
import 'package:jerwin/editpage.dart';
import 'package:jerwin/homepage.dart';


class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Image.asset('lib/image/us1.png', height: 90, width: 80,),
                Text('           U.S Dollar', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('lib/image/uero1.png', height: 90, width: 80,),
                Text('           U.S Dollar', style: TextStyle(color: Colors.white, fontSize: 20),),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('lib/image/ph1.png', height: 90, width: 80,),
                Text('           U.S Dollar', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            SizedBox(
              height: 150,
              width: 300,
              child: Container(
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPage())),
                  child: Icon(Bootstrap.plus, size: 70, color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(23, 56, 140, 100),
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Cryptocurrency Converter', style: TextStyle(fontSize: 19),),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 50.0)),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Icon(Icons.done, size: 26.0,),
          )
        ],
      ),

    );
  }
}
