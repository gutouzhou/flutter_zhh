import 'package:flutter/material.dart';

void main() => runApp(GridApp());

class GridApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是标题'),
          
        ),
        body: GridView(
            children: <Widget>[
              Image.network('http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg',fit: BoxFit.cover,),
              Image.network('http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg',fit: BoxFit.cover,),
              Image.network('http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg',fit: BoxFit.cover,),
              Image.network('http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg',fit: BoxFit.cover,),
              Image.network('http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg',fit: BoxFit.cover,),
              Image.asset("image/image_set.png",package:"flutter_app",fit: BoxFit.cover,),

//              Image.network('http://img18.3lian.com/d/file/201709/21/f498e01633b5b704ebfe0385f52bad20.jpg',fit: BoxFit.cover,),
            ],
            padding: EdgeInsets.all(3.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 3.0,
              childAspectRatio: 1,
            )),
        floatingActionButton: FloatingActionButton(onPressed: null,
          child: Icon(Icons.ac_unit),),

      ),
    );
  }
}
