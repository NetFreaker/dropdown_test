import 'package:flutter/material.dart';

import 'model_class.dart';

class CoreWidget extends StatefulWidget {
  final String categoryName;
  final List<StandardLevel> category;
  const CoreWidget(
      {Key? key, required this.categoryName, required this.category})
      : super(key: key);

  @override
  _CoreWidgetState createState() => _CoreWidgetState();
}

class _CoreWidgetState extends State<CoreWidget> {
  List<Widget> children = [];
  List<Widget> _getChildren() {
    widget.category.forEach((element) {
      children.add(Theme(
        key: Key(element.title!),
        data: ThemeData(primaryColor: Colors.red),
        child: new ListTile(
            key: Key(element.title!),
            tileColor: Colors.white,
            leading: Icon(Icons.dashboard_customize),
            title: Text(element.title!)),
      ));
    });
    return children;
  }

  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = _getChildren().removeAt(oldindex);
      _getChildren().insert(newindex, items);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.category.length);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ExpansionTile(
              backgroundColor: Colors.grey.shade300,
              collapsedBackgroundColor: Colors.grey.shade300,
              title: Text(widget.categoryName),
              children: [
                SizedBox(
                  height: widget.category.length * 56.0,
                  child: ReorderableListView(
                    children: [
                      for (var i = 0; i < widget.category.length; i++)
                        Container(
                            color: Colors.white,
                            key: ValueKey(widget.category[i]),
                            child: _singleProgram(widget.category[i].title!, i))
                    ],
                    onReorder: reorderData,
                  ),
                ),
              ]),
          Container(
              height: 50,
              padding: EdgeInsets.only(left: 12.0),
              color: Colors.grey.shade300,
              child: Row(children: [
                Icon(Icons.add, color: Colors.orange),
                SizedBox(width: 10.0),
                Text('Add', style: TextStyle(color: Colors.orange))
              ]))
        ],
      ),
    );
  }
}

Widget _singleProgram(String title, int index) {
  return ListTile(
      key: Key(title),
      tileColor: Colors.white,
      leading: Icon(Icons.dashboard_customize),
      title: Text((index + 1).toString() + " " + title));
}
