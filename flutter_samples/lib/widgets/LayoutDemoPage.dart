import 'package:flutter/material.dart';

class LayoutDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局控件"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("我是第一行"),
              Text("I am Qianyu"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("我是第二行"),
              Text("I am Qianyu"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: [
              Text("我是第三行"),
              Text("I am Qianyu"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: [
              Text("我是第四行",style: TextStyle(fontSize: 30),),
              Text("I am Qianyu"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("我是第一个 Column"),
              Text("我是第二个 Column")
            ],
          ),
        ],
        
      ),
      
    );
  }
}
