import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

  GlobalKey _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单登录"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          // 设置globalKey，用于后面获取FormState
          key: _formKey,
          // //开启自动校验
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: true,
                controller: _unameController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或密码",
                    icon: Icon(Icons.person)),
                // 效验用户名
                validator: (v) {
                  return v.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    icon: Icon(Icons.lock)),
                obscureText: true,
                // 校验密码
                validator: (v) {
                  return v.trim().length > 5 ? null : "密码不能少于6位";
                },
              ),
              // 登录按钮
              Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      style:
                          ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(16))),
                      child: Text("登录"),
                      onPressed: () {
                        if ((_formKey.currentState as FormState).validate()) {
                          print("提交数据");
                        }
                      },
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
