import 'package:flutter/material.dart';
import 'package:/details_product.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Attempt 2',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Attempt 2'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: _buildListView(context),
      );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text('Заголовок товара #$index'),
          subtitle: Text('Тут описание товара'),
          leading: Icon(Icons.thumb_up),
          trailing: Icon(Icons.arrow_forward),
          onTap; () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage(index),
                ),
              ),
            );
          }
        );
      },
    );
  } 
}