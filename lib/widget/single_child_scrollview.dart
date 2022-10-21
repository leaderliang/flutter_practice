import 'package:flutter/material.dart';

//  sliver


/**
 * scrollview and  listView
 */
main() {
  runApp(const Scrollview());
}

class Scrollview extends StatelessWidget {
  const Scrollview ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    ScrollController controller = ScrollController();
    return MaterialApp(
      title: "Scrollview",
      home: Scaffold(
          appBar: AppBar(
            title: Text("我是 title"),
        ),
      // body: ListViewWidget()
      // body: SingleChildScrollViewWidget()
        body: ListView.builder(
            itemCount: 100,
            controller: controller,
            itemBuilder: (context, index) {

          return ListTile(title:  Text("$index"));
        }),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_upward),
            onPressed: (){
              print("click FloatingActionButton");
              // controller.jumpTo(10);
              controller.animateTo(90, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            }),
          
      )
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        reverse : false,
        children: [
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView", textScaleFactor: 2),
          Text("test  listView"),
          Text("test  listView"),
          Text("test  listView"),
          Text("test  listView"),
          Text("test  listView"),
          Text("test  listView"),
          Text("test  listView"),
        ],
    );
  }
}

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({
    Key? key,
    required this.str,
  }) : super(key: key);

  final String str;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Center(
          child: Row (
            children: str.split("").map((e) => Text(
                e,
                style: const TextStyle(wordSpacing: 23),
                textScaleFactor: 4

            )).toList(),
          )
     /*     child: Column(
      children: str.split("").map((e) => Text(
          e,
          textScaleFactor: 3

      )).toList(),
    )*/
      ),
    );
  }
}
