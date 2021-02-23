import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  final int index;

  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Какое-то описание товара'),
      ),
      body: Center(
        child: Text(
          'Какой-то текст описания товара #$index',
          style: TextStyle(
            fontSize: 32.0
            ),
          ),
      ),
    );
  }
}