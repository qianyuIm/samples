import 'package:flutter/material.dart';

class LayoutActualDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("实战布局"),
      ),
      body: ListView(
        children: <Widget>[style1Box(), style2Box(), style3Box()],
      ),
    );
  }

  Widget style1Box() {
    var style = Row(
      children: [
        Icon(
          Icons.extension,
          color: Colors.blue,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "好友微视",
            style: TextStyle(fontSize: 18),
          ),
        )),
        Icon(Icons.arrow_forward_ios),
      ],
    );
    return Container(
        child: Padding(
      padding: EdgeInsets.all(5),
      child: style,
    ));
  }

  Widget style2Box() {
    var headImg = Image.asset(
      "images/icon.jpeg",
      width: 45,
      height: 45,
    );
    var center = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("心如止水"),
        Text(
          "《应龙》--张风捷特烈 一游小池两岁月，洗却凡世几闲尘。时逢雷霆风会雨，应乘扶摇化入云。",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
    var end = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("06:45"),
        Icon(
          Icons.visibility_off,
          size: 20,
          color: Color(0xff999999),
        ),
      ],
    );
    var style = Row(
      children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: headImg,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(5),
          child: center,
        )),
        end
      ],
    );
    return Container(
      child: style,
      height: 70,
      padding: EdgeInsets.all(5),
    );
  }

  Widget style3Box() {
    var headImg = Image.asset(
      "images/icon.jpeg",
      width: 45,
      height: 45,
    );
    var center = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("张风捷特烈"),
        Row(
          children: <Widget>[
            Icon(Icons.next_week, size: 15),
            Padding(padding: EdgeInsets.only(left: 5), child: Text("创世神 | 无")),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(Icons.keyboard, size: 15),
            Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text("海的彼岸有我未曾见证的风采")),
          ],
        ),
      ],
    );
    var end3 = Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
    Row(children: <Widget>[
        Icon(Icons.language,size: 15,),
        Icon(Icons.local_pharmacy, size: 15),
        Icon(Icons.person_pin_circle, size: 15)
      ],
    ),
    Text("编辑")
  ],
);


    var style = Row(
      children: [
        headImg,
        Expanded(child: Padding(
          padding: EdgeInsets.all(5),
          child: center,
        ),),
        Padding(padding:EdgeInsets.all(10),child: end3,)
      ],
    );
    return Container(padding: EdgeInsets.all(5), child: style);
  }
}
