import 'package:flutter/material.dart';

class StateDemoPage extends StatefulWidget {
  @override
  _StateDemoPageState createState() => _StateDemoPageState();
}

class _StateDemoPageState extends State<StateDemoPage> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理"),
      ),
      body: GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Center(
            child: Text(
              _active ? "active" : "Inactive",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
        ),
      ),
    );
  }
}
