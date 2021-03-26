import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextRoute extends StatefulWidget {
  @override
  _TextRouteState createState() => _TextRouteState();
}

class _TextRouteState extends State<TextRoute> {
  GestureRecognizer _tapRecognizer;

@override
  void initState() {
    _tapRecognizer = TapGestureRecognizer();
    super.initState();
  }

  @override
  void dispose() {
    _tapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       children: <Widget>[
         Text(
           "Hello World",
           textAlign: TextAlign.left,
           ),
          Text(
            "Hello World! I'm QianYu." * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello World",
            textScaleFactor: 1.5,
          ),
          Text(
            "Hello World" * 6,
            textAlign: TextAlign.right,
          ),
          Text(
            "Hello World",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: new Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed),
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(text: "Home:"),
              TextSpan(
                text: "https://www.baidu.com",
                style: TextStyle(color: Colors.blue),
                recognizer: _tapRecognizer),
            ]),
          ),
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.left,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("Hello World"),
                Text("I am QianYu"),
                Text(
                  "I am QianYu",
                  style: TextStyle(
                    inherit: false,
                    color: Colors.green),
                  ),
             ],),
          ),
       ], 
      ),
    );
  }
}