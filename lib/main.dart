import 'package:flutter/material.dart';
import 'package:flutter_app/zxj_app.dart';
import 'package:flutter_app/navigation_view.dart';
import 'package:flutter_app/count_cal.dart';
void main() =>
//    runApp(MyApp(items: new List<String>.generate(30, (i) => 'Item $i'))
    runApp(Count_APP());

class MyApp extends StatelessWidget {
  final List<String> items;

//带参数的构造函数
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Welcome to Ljc',
      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Fuck You'),
//        ),
        body: Center(
          child: Container(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return new ListTile(
                    title: new Text(items[index]),
                  );
                }),

//            文本组件
//            child: Text('欢迎光临',
//            style: TextStyle(
//              fontSize: 40.0,
//            ),),
//          alignment: Alignment.bottomCenter,
//            width: 500.0,
//            height: 300.0,
////            color: Color(0xff513388),
//            padding:  EdgeInsets.all(10.0),
//            margin:  EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  colors: [
//                    Colors.lightBlue,
//                    Colors.black26,
//                    Colors.deepOrange
//                  ]
//              )
//            ),

//          图片组件
//          child: Image.network(
//            'http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg',
//            scale: 2.0,
//            repeat: ImageRepeat.repeatY,
//          ),
//            width: 400.0,
//            height: 600.0,
//            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
//              ListTile(
//                leading: Icon(Icons.account_box),
//                title:Text('我是第一个标题',
//                style: TextStyle(fontSize: 15,color: Colors.lightBlue),
//                ),
//              ),
//              ListTile(
//                leading: Icon(Icons.account_balance),
//                title:Text('我是第二个标题'),
//              ),
//              ListTile(
//                leading: Icon(Icons.add_circle),
//                title:Text('我是第三个标题'),
//              ),
        Container(
          child: Image.network(
              'http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg'),
          width: 100.0,
          height: 300.0,
        ),
        Container(
          child: Image.network(
              'http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg'),
          width: 150.0,
          height: 300.0,
        ),
        Container(
          child: Image.network(
              'http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg'),
          width: 200.0,
          height: 200.0,
        ),

        Image.network(
            'http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg'),
      ],
    );
  }
}
//Text(
//'你好啊额我去接哦记得爱睡觉大锁大四就哦的加上偶记得加送低价哦啊少囧的加上偶记得哦啊送ID傲娇的哦进啊死嗲搜集大家啊死',
//textAlign: TextAlign.right,
//maxLines: 1,
//overflow: TextOverflow.ellipsis,
//style: TextStyle(
//fontSize: 25.0,
//color: Color(0xff333333),
//decoration: TextDecoration.underline,
//decorationStyle: TextDecorationStyle.dashed),
//),
