import 'package:flutter/material.dart';

import 'routes/index.dart';
import 'widgets/index.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo'),),
      body: ListView(children: [
        ExpansionTile(title: Text("基础组件"),
        children: _generateItem(context, [
          PageInfo("context测试", (ctx) => ContextRoute(),withScaffold: false),
          PageInfo("Widget树中获取State对象", (ctx) => RetrieveStateRoute(), withScaffold: false),
          PageInfo("文本、字体样式", (ctx) => TextRoute())
        ]), 
        ),
        ExpansionTile(title: Text("布局类组件"),
        children: _generateItem(context, [
          PageInfo("Column居中", (ctx) => CenterColumnRoute(),withScaffold: false),

        ]),
        ),
      ],),
    );
  }
  

  List<Widget> _generateItem(BuildContext context, List<PageInfo> children) {
    return children.map<Widget>((page) {
      return ListTile(
        title: Text(page.title),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => _openPage(context, page),
      );
    }).toList();
  }

  void _openPage(BuildContext context, PageInfo page) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        if (!page.withScaffold) {
          return page.builder(context);
        }
        return PageScaffold(
          title: page.title,
          body: page.builder(context),
          padding: page.padding,
        );
      }));
  }
}
