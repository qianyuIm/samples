import 'package:flutter/material.dart';

class RetrieveStateRoute extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return TextButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("显示显示SnackBar"),
              )
            );
          }, child: Text("显示SnackBar"));
        },),
      ),
    );
  }
}