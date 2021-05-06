import 'package:flutter/material.dart';

class ControllerDemoPage extends StatelessWidget {
  final TextEditingController textController =
      new TextEditingController(text: "init Text");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ControllerDemoPage'),
      ),
      extendBody: true,
      body: Column(
        children: [
          new Expanded(child: InkWell(onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },)),
          ///增加 CustomWidget
          CustomWidget(),
          new Container(
            margin: EdgeInsets.all(10),
            child: new TextField(controller: textController,),
          ),
          new Spacer(),
        ],
      ),
    );
  }
}
class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Custom MediaQuery padding: ${MediaQuery.of(context).padding} viewInsets.bottom: ${MediaQuery.of(context).viewInsets.bottom}\n  \n");
    return Container();
  }
}