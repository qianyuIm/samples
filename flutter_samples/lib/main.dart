import 'package:flutter/material.dart';
import 'package:flutter_samples/widgets/index.dart';

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
      routes: routers,
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
    var routeLists = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeLists[index]);
              },
              child: new Card(
                child: new Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: new Text(routers.keys.toList()[index]),
                ),
              ),
            );
          },
          itemCount: routers.length,
        ),
      ),
    );
  }
}

// 全局路由
Map<String, WidgetBuilder> routers = {
  "状态管理": (context) {
  return new StateDemoPage();
  },
  "父widget管理子widget": (context) {
  return new StateDemoPage1();
  },
  "单选开关和复选框": (context) {
  return new SwitchAndCheckBoxDempPage();  
  },
  "表单登录": (context) {
    return new FormDemoPage();
  },
  "进度条":(context) {
    return new ProgressDemoPage();
  }
  "Row Column": (context) {
    return new LayoutDemoPage();
  },
  "Flex布局类控件": (context) {
    return new FlexDemoPage();
  },
  "Wrap布局类控件": (context) {
    return new WrapDemoPage();
  },
  "Flow布局类控件": (context) {
    return new FlowDemoPage();
  },
  "布局实战": (context) {
    return new LayoutActualDemoPage();
  },
  "文本输入框简单的 Controller": (context) {
    return new ControllerDemoPage();
  },
  "各种按钮": (context) {
    return new ButtonDemoPage();
  },
  "自定义绘制": (context) {
    return new CustomPainterDemoPage();
  },
};
