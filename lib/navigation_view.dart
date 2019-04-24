import 'package:flutter/material.dart';
import 'package:flutter_app/zxj_app.dart';
import 'package:flutter_app/count_cal.dart';
import 'package:flutter_app/gridview.dart';
import 'package:flutter_app/discover_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BottomNavigationWidgetState();
  }
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  List<Widget> pages = new List();

  @override
//initState是初始化函数，在绘制底部导航控件的时候就把这3个页面添加到list里面用于下面跟随标签导航进行切换显示
  void initState() {
    pages..add(DisCoverPage())..add(ZXJAPP())..add(GridApp());
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    /*
    返回一个脚手架，里面包含两个属性，一个是底部导航栏，另一个就是主体内容
     */
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
//        iconSize: ScreenUtil.getInstance().setWidth(44),
        //底部导航栏的创建需要对应的功能标签作为子项，这里我就写了3个，每个子项包含一个图标和一个title。
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/image/home_unselected.png',
                width: ScreenUtil.getInstance().setWidth(44),
                height: ScreenUtil.getInstance().setHeight(44),
              ),
              activeIcon: Image.asset(
                'assets/image/home_selected.png',
                width: ScreenUtil.getInstance().setWidth(44),
                height: ScreenUtil.getInstance().setHeight(44),
              ),
              title: new Text(
                '职位',
                style: new TextStyle(
                    color: _currentIndex == 0
                        ? new Color(0xff333333)
                        : new Color(0xff999999),
                    ),
              ),
            backgroundColor: new Color(0xffffffff)
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/image/img_icon_earn_money_uncheck.png',
                width: ScreenUtil.getInstance().setWidth(44),
                height: ScreenUtil.getInstance().setHeight(44),
              ),
              activeIcon: Image.asset(
                'assets/image/img_icon_earn_money_check.png',
                width: ScreenUtil.getInstance().setWidth(44),
                height: ScreenUtil.getInstance().setHeight(44),
              ),
              title: new Text(
                '发现',
                style: new TextStyle(
                    color: _currentIndex == 1
                        ? new Color(0xff333333)
                        : new Color(0xff999999),
                    fontSize: ScreenUtil.getInstance().setSp(24)),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/image/img_me_unselected.png',
                width: ScreenUtil.getInstance().setWidth(44),
                height: ScreenUtil.getInstance().setHeight(44),
              ),
              activeIcon: Image.asset(
                'assets/image/img_me_selected.png',
                width: ScreenUtil.getInstance().setWidth(44),
                height: ScreenUtil.getInstance().setHeight(44),
              ),
              title: new Text(
                '我的',
                style: new TextStyle(
                    color: _currentIndex == 2
                        ? new Color(0xff333333)
                        : new Color(0xff999999),
                    fontSize: ScreenUtil.getInstance().setSp(24)),
              )),
        ],
        //这是底部导航栏自带的位标属性，表示底部导航栏当前处于哪个导航标签。给他一个初始值0，也就是默认第一个标签页面。
        currentIndex: _currentIndex,
        //这是点击属性，会执行带有一个int值的回调函数，这个int值是系统自动返回的你点击的那个标签的位标
        onTap: (int i) {
          //进行状态更新，将系统返回的你点击的标签位标赋予当前位标属性，告诉系统当前要显示的导航标签被用户改变了。
          setState(() {
            _currentIndex = i;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}

void main() => runApp(new MyApp());

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '底部导航演示',
      home: new BottomNavigationWidget(),
    );
  }
}


