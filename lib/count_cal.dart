import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/InitTree.dart';
import 'package:flutter_app/navigation_view.dart';
import 'package:flutter_app/zxj_app.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '计算器',
      home: MyHomePage(key, '我的第一个计算器'),
      routes: {
        'new_page': (context) => NewRoute(),
        'sec_page': (context) => SecRoute(key, '信不信我打死你'),
        'spec_page': (context) => NavigationApp(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage(Key key, this.title) : super(key: key);

  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var word;

  void incrementCounter() {
    setState(() {
      _counter++;
      word = new WordPair.random();
      request_word = '正在请求中';
      loadData();
    });
  }

  void loadDataSuccess() {
    setState(() {
      request_word = '请求完毕';
      Navigator.pushNamed(context, 'spec_page');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '状态',
      home: new Scaffold(
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('我在中间负责打酱油'),
              Text('$_counter文字：$word'),
              Text('$request_word'),
              Text('版本号$version'),
              FlatButton(
                child: Text('来吧，神兽'),
                onPressed: () {
//                  Navigator.push(context,
//                      new MaterialPageRoute(builder: (context) {
//                        return new NewRoute();
//                      },
//                        fullscreenDialog: true,
//                      ));
                  loadData();
//                  Navigator.pushNamed(context, 'sec_page');
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          child: Icon(Icons.access_alarm),
        ),
      ),
    );
  }

  loadData() async {
    var url = "http://app.api.zhh.emjz.cn/appinit";
    http.post(url, headers: {
      'RABITOKEN': '7602be6a4397b4932c491198a822149e',
    }, body: {
      "app_version": "1.3.0",
    }).then((response) {
      print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
      Map userMap = json.decode(response.body);
      var user = new InitTree.fromJson(userMap);
      print("老子要的版本号是: ${user.version.Android.download_url}");
      version = user.version.Android.download_url;
      request_word = "请求完毕";
      loadDataSuccess();
    });

//  http.read("http://example.com/foobar.txt").then(print);
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class SecRoute extends StatelessWidget {
  SecRoute(Key key, this.tips) : super(key: key);
  String tips;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecRoute route"),
      ),
      body: Center(
        child: Text("This is SecRoute route$tips"),
      ),
    );
  }
}

var version;
var request_word = '正在请求中';
//OKHTTP请求 +JSON解析
