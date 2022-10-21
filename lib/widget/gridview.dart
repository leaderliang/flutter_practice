import 'package:flutter/material.dart';

/**
 * GridView 相关使用
 */
main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  SliverGridDelegateWithMaxCrossAxisExtent
    //  SliverGridDelegateWithFixedCrossAxisCount 该子类实现了一个横轴为固定数量子元素的layout算法
    // List<Widget> list = [];
    // var list = <Widget>[];
    List<Widget> list = [];
    for (var i = 0; i < 100; i++) {
      list.add(SizedBox(
        width: 100,
        height: 100,
        child: Image.network(
          "http://www.tangguoketang.com/img/banner01.7c3681ef.png",
          fit: BoxFit.fill,
        ),
      ));
    }

    return MaterialApp(
        title: "GridView",
        home: Scaffold(
            appBar: AppBar(
              title: Text("我是 GridView"),
            ),
            body: GridView.builder(
              itemCount: 5,
                padding: EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                    //纵轴间距
                    mainAxisSpacing: 10.0,
                    //横轴间距
                    crossAxisSpacing: 5.0,
                    //宽高长度比例
                    childAspectRatio: 2

                ),
                itemBuilder: (context, index) {
                  return Image.network(
                    "http://www.tangguoketang.com/img/banner01.7c3681ef.png",
                    fit: BoxFit.fill,
                  );
                },
                )));
  }
}

class GridViewCountWidget extends StatelessWidget {
  const GridViewCountWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        // 等同于 SliverGridDelegateWithFixedCrossAxisCount 的用法
        padding: EdgeInsets.all(8),
        children: list,
        crossAxisCount: 3,
        //纵轴间距
        mainAxisSpacing: 10.0,
        //横轴间距
        crossAxisSpacing: 5.0,
        //宽高长度比例
        childAspectRatio: 2);
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return GridView(
        children: list,
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //组件扩展长度
            maxCrossAxisExtent: 400,
            //纵轴间距
            mainAxisSpacing: 10.0,
            //横轴间距
            crossAxisSpacing: 5.0,
            //宽高长度比例
            childAspectRatio: 2)
        /* gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //横轴元素个数
              crossAxisCount: 3,
              //纵轴间距
              mainAxisSpacing: 10.0,
              //横轴间距
              crossAxisSpacing: 10.0,
              //宽高长度比例
              childAspectRatio: 1.4
          )*/
        );
  }
}
