import 'package:flutter/material.dart';

/**
 * PageView 相关使用
 */
main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController(initialPage: 0, keepPage: true);
    return MaterialApp(
        title: "PageView",
        home: Scaffold(
            appBar: AppBar(
              title: Text("我是 PageView"),
            ),
            body: PageView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                    child: Center(
                        child: Text(
                      "$index",
                      textScaleFactor: 3,
                    )),
                  );
                })));
  }
}

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      reverse: false,
      controller: controller,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.blue,
        ),
      ],
    );
  }
}
