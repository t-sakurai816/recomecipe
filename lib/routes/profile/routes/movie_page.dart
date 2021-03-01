import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  final String screenName = '動画'; //中身に表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}
