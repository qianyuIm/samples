import 'package:flutter/material.dart';

class StateDemoPage1 extends StatefulWidget {
  @override
  _StateDemoPage1State createState() => _StateDemoPage1State();
}

class _StateDemoPage1State extends State<StateDemoPage1> {
  bool _active = false;
  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("父widget管理子widget"),
      ),
      body: Container(
        child: TapboxB(
          active: _active,
          onChanged: _handleTapBoxChanged,
        ),
      ),
    );
  }
}

class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
    
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "Active" : "Inactive",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}

