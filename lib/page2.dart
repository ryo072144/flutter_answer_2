
//問２ 新しくページを作成するときは、material.dartのインポートを忘れないように。
import 'package:flutter/material.dart';
import 'package:flutter_exercise_2/widget.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('page2', style: titleStyle(),),),

      //問４ pop()で前の画面に戻る。CenterでWidgetを中央に位置させる。
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>Navigator.of(context).pop(),
          child: Text('page2',),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
          ),
        ),
      ),
    );
  }
}
