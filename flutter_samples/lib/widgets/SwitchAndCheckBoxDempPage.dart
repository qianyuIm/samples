import 'package:flutter/material.dart';

class SwitchAndCheckBoxDempPage extends StatefulWidget {
  @override
  _SwitchAndCheckBoxDempPageState createState() => _SwitchAndCheckBoxDempPageState();
}

class _SwitchAndCheckBoxDempPageState extends State<SwitchAndCheckBoxDempPage> {
  
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("单选开关和复选框"),
    ),
    body: Column(
      children: [
        Switch(value: _switchSelected, onChanged: (value) {
          setState(() {
            _switchSelected = value;
          });
        }),
        Checkbox(
          value: _checkboxSelected, 
          activeColor: Colors.red,
        onChanged: (value) {
            setState(() {
            _checkboxSelected = value;
          });
        },)
      ],
    )
    );
  }
}