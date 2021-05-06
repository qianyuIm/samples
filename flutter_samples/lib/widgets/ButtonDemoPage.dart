import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('各种按钮'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  print("我是个按钮");
                },
                child: Text("我是个按钮")),
            TextButton(
                onPressed: () {
                  print("我还是个按钮");
                },
                child: Text('我还是个按钮')),
            OutlinedButton(
                onPressed: () {
                  print("我还是个按钮");
                },
                child: Text('我还是个按钮')),
            IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {
                  print("我还是个按钮");
                }),
            ElevatedButton(
                onPressed: () {
                  print("自定义外观");
                },
                child: Text("自定义外观"),
                style: ButtonStyle( 
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(side: BorderSide(
                    width: 5.0,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  )),
                )),
          ],
        ));
  }
}
