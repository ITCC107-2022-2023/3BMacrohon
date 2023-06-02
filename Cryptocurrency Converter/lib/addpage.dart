import 'package:flutter/material.dart';
import 'package:jerwin/NavBar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:jerwin/addpage.dart';
import 'package:jerwin/backbutton.dart';
import 'package:jerwin/editpage.dart';


class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Image.asset('lib/image/canada1.png', height: 80, width: 70,),
                Text('           Canadian Dollar', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('lib/image/columbia1.png', height: 80, width: 70,),
                Text('           Columbian Peso', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('lib/image/mexican1.png', height: 80, width: 70,),
                Text('           Mexican Peso', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Image.asset('lib/image/singapore1.png', height: 80, width: 70,),
                Text('           Singapore Dollar', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Image.asset('lib/image/thai1.png', height: 80, width: 70,),
                Text('           Thai Bhat', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            SizedBox(
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
      appBar: AppBar(
        title: const Text('Select Currency', style: TextStyle(fontSize: 25),),
        leading: Back(),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 50.0)),
          GestureDetector(
            onTap: (){
            },
            child: Icon(Icons.search, size: 26.0,),
          )
        ],
      ),

    );
  }
}
