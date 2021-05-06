import 'package:flutter/material.dart';

class FlexDemoPage extends StatelessWidget {
  static var redBox = Container(
    color: Colors.red,
    height: 50,
    width: 50,
  );

  static var blueBox = Container(
    color: Colors.blue,
    height: 30,
    width: 60,
  );

  static var yellowBox = Container(
    color: Colors.yellow,
    height: 50,
    width: 100,
  );

  static var greenBox = Container(
    color: Colors.green,
    height: 60,
    width: 60,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title: Text("flex 弹性布局"),
        ),
      
        body: Container(
          color: Colors.black,
          height: 300,
          child: Flex(
            // 轴向 水平
            direction: Axis.horizontal,
            // 主轴方向
            mainAxisAlignment: MainAxisAlignment.center,
            // 交叉轴方向与主轴方向相反
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [redBox, blueBox, yellowBox, greenBox],
          ),
          
        ));
  }
}
