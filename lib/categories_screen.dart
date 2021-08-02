import 'dart:convert';
import 'package:dropdown_test/constants.dart';
import 'package:dropdown_test/model_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'corewidget.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  Future<String> getJson() {
    return rootBundle.loadString('categories.json');
  }

  Future<DropDownModelClass> getData() async {
    final result = jsonDecode(jsonData);
    var data = DropDownModelClass.fromJson(result);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('Categories', style: TextStyle(color: Colors.black)),
            actions: <Widget>[
              TextButton(
                  child: Text('Edit', style: TextStyle(color: Colors.orange)),
                  onPressed: () {})
            ]),
        body: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot<DropDownModelClass> snapshot) {
              if (snapshot.hasData) {
                DropDownModelClass data = snapshot.data!;
                return ListView(
                  children: [
                    Text(data.message!),
                    CoreWidget(
                        key: ValueKey('Beginners Programs'),
                        categoryName: 'Beginners Programs',
                        category: data.data!.sessions!.beginners!),
                    CoreWidget(
                        key: ValueKey('Intermediate Programs'),
                        categoryName: 'Intermediate Programs',
                        category: data.data!.sessions!.intermediate!),
                    CoreWidget(
                        key: ValueKey('Advanced Programs'),
                        categoryName: 'Advanced Programs',
                        category: data.data!.sessions!.advanced!)
                  ],
                );
              } else {
                return CircularProgressIndicator();
              }
            }));
  }
}
