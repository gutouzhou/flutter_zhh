import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app/navigation_view.dart';
void main() => runApp(ZXJAPP());

class ZXJAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return new MaterialApp(
      title: '登录注册',
      home: Scaffold(
        body: new SingleChildScrollView(
//          Image.asset("image/image_close.png",package:"flutter_app",fit: BoxFit.cover,)
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                child: Image.asset(
                  "assets/image/img_close.png",
                  width: ScreenUtil.getInstance().setWidth(44),
                  height: ScreenUtil.getInstance().setHeight(44),
                ),
                padding: EdgeInsets.fromLTRB(
                    ScreenUtil.getInstance().setWidth(44),
                    ScreenUtil.getInstance().setHeight(44),
                    0,
                    0),
                alignment: Alignment.topLeft,
              ),
              new Container(
                child: Image.asset(
                  "assets/image/img_logo.png",
                  width: ScreenUtil.getInstance().setWidth(138),
                  height: ScreenUtil.getInstance().setHeight(138),
                ),
                margin: EdgeInsets.fromLTRB(
                    0, ScreenUtil.getInstance().setHeight(140), 0, 0),
                alignment: Alignment.center,
              ),
              new Container(
                child: Text(
                  '轻松借款，最高可借50000元',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(30),
                    color: new Color(0xff333333),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(
                    0, ScreenUtil.getInstance().setHeight(48), 0, 0),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(
                    0, ScreenUtil.getInstance().setHeight(110), 0, 0),
                height: ScreenUtil.getInstance().setHeight(110),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: Image.asset(
                        "assets/image/img_login_phone.png",
                        width: ScreenUtil.getInstance().setWidth(44),
                        height: ScreenUtil.getInstance().setHeight(44),
                      ),
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil.getInstance().setWidth(70), 0, 0, 0),
                      alignment: Alignment.center,
                    ),
                    Expanded(
                        child: new Container(
                      child: new TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入手机号',
                            hintStyle: new TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(30),
                              color: new Color(0xffCECECE),
                            )),
                        style: new TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(30),
                          color: new Color(0xff333333),
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil.getInstance().setWidth(35), 0, 0, 0),
//                          height: ScreenUtil.getInstance().setHeight(110),
                    )),
                  ],
                ),
              ),
              new Padding(
                  padding: EdgeInsets.fromLTRB(
                      ScreenUtil.getInstance().setWidth(50),
                      0,
                      ScreenUtil.getInstance().setWidth(50),
                      0),
                  child: new Divider(
                    color: new Color(0xffEBEBEB),
                    height: ScreenUtil.getInstance().setHeight(2),
                  )),
              new Container(
                margin: new EdgeInsets.fromLTRB(
                    ScreenUtil.getInstance().setWidth(70),
                    0,
                    ScreenUtil.getInstance().setWidth(70),
                    0),
                height: ScreenUtil.getInstance().setWidth(110),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/image/img_login_code.png',
                      width: ScreenUtil.getInstance().setWidth(44),
                      height: ScreenUtil.getInstance().setHeight(44),
                    ),
                    Expanded(
                        child: new Container(
                      child: new TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入验证码',
                            hintStyle: new TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(30),
                              color: new Color(0xffCECECE),
                            )),
                        style: new TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(30),
                          color: new Color(0xff333333),
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(
                          ScreenUtil.getInstance().setWidth(35), 0, 0, 0),
//                          height: ScreenUtil.getInstance().setHeight(110),
                    )),
                    new Container(
                      margin: new EdgeInsets.fromLTRB(
                          ScreenUtil.getInstance().setWidth(15),
                          0,
                          ScreenUtil.getInstance().setWidth(15),
                          0),
                      color: new Color(0xffEBEBEB),
                      width: ScreenUtil.getInstance().setWidth(2),
                      height: ScreenUtil.getInstance().setHeight(50),
                    ),
                    Text(
                      '获取验证码',
                      style: new TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(30),
                          color: new Color(0xffFFDD01)),
                    ),
                  ],
                ),
              ),
              new Padding(
                  padding: EdgeInsets.fromLTRB(
                      ScreenUtil.getInstance().setWidth(50),
                      0,
                      ScreenUtil.getInstance().setWidth(50),
                      0),
                  child: new Divider(
                    color: new Color(0xffEBEBEB),
                    height: ScreenUtil.getInstance().setHeight(2),
                  )),
              new Container(
                margin: new EdgeInsets.fromLTRB(
                    ScreenUtil.getInstance().setWidth(60),
                    ScreenUtil.getInstance().setHeight(20),
                    0,
                    0),
                alignment: Alignment.topLeft,
                child: Text(
                  '新用户无需注册，可凭手机号直接登录',
                  style: new TextStyle(
                      fontSize: ScreenUtil.getInstance().setSp(24),
                      color: new Color(0xffDADADA)),
                ),
              ),
              new Container(
                child: new FlatButton(
                    onPressed: () {},
                    color: new Color(0xffFFDD01),
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            ScreenUtil.getInstance().setWidth(41))),
                    child: new Text(
                      '登录',
                      style: new TextStyle(
                        color: new Color(0xff333333),
                        fontSize: ScreenUtil.getInstance().setSp(36),
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                width: ScreenUtil.screenWidth,
                height: ScreenUtil.getInstance().setHeight(82),
                margin: EdgeInsets.fromLTRB(
                    ScreenUtil.getInstance().setWidth(62),
                    ScreenUtil.getInstance().setHeight(100),
                    ScreenUtil.getInstance().setWidth(62),
                    0),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(
                    0,
                    ScreenUtil.getInstance().setHeight(50),
                    0,
                    ScreenUtil.getInstance().setHeight(10)),
                alignment: Alignment.center,
                child: Text('账号密码登录',
                    style: new TextStyle(
                        color: new Color(0xffFFC82E),
                        fontSize: ScreenUtil.getInstance().setSp(30))),
              ),
              new Container(
                alignment: Alignment.center,
                child: new CustomPaint(
                  painter: new MyPainter(),
                  size: new Size(ScreenUtil.getInstance().setWidth(104),
                      ScreenUtil.getInstance().setHeight(4)),
                ),
              ),
              new Container(
                width: ScreenUtil.getInstance().setWidth(ScreenUtil.screenWidth.floor()),
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(50)),
                child:  new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text('登录即代表阅读并同意',
                      style: new TextStyle(
                          color: new Color(0xffCECECE),
                          fontSize: ScreenUtil.getInstance().setSp(24)
                      ),),
                    new Text('《知心借注册服务协议》',
                      style: new TextStyle(
                          color: new Color(0xffFFC82E),
                          fontSize: ScreenUtil.getInstance().setSp(24)
                      ),),

                  ],

                ),
              ),
//              new Container(
//                child: new BottomNavigationWidget(),
//              )
            ],

          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Paint _paint = Paint()
    ..color = new Color(0xffFFC82E) //画笔颜色
    ..strokeCap = StrokeCap.round //画笔笔触类型
    ..isAntiAlias = true //是否启动抗锯齿
    ..strokeWidth = ScreenUtil.getInstance().setHeight(4); //画笔的宽度

  @override
  void paint(Canvas canvas, Size size) {
//    canvas.drawRRect(new RRect.fromLTRBR(
//        0, 500, size.width, ScreenUtil.getInstance().setWidth(82),
//        ScreenUtil.getInstance().setWidth(41)), _paint);
//    Rect rect1 = Rect.fromPoints(Offset(100.0, 200.0), Offset(300.0, 250.0));
//    canvas.drawOval(rect1, _paint);
//    canvas.drawRRect(new RRect.fromRectAndRadius(new Rect.fromPoints(new Offset(0, 0),new Offset(size.width, size.height)), ScreenUtil.getInstance().setWidth(41)), _paint);
//    canvas.drawRect(new Rect.fromLTWH(size.width-200, size.height-200, 50, 50),_paint);
//    canvas.drawCircle(new Offset(size.width/2, size.height/2), size.height/2, _paint);
//    canvas.drawRRect(new RRect.fromRectAndRadius(new Rect.fromLTRB(50, 300, 300, 300), ScreenUtil.getInstance().setWidth(41)), _paint);

    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}
