import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String screenName = 'ホーム'; //中身に表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}