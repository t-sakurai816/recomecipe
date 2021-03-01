import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String screenName = 'リスト'; //中身に表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}
