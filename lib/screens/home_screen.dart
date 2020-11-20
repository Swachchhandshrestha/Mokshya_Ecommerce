import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mokshya/components/SearchBar.dart';
import 'main_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routename='/home';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text('Welcome to Mokshya Store'),),
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
              ),
              child: Text("")
            ),
          ],
        ),
      ),
    );
  }
}
