import 'package:flutter/material.dart';

import '../../header.dart';

class HistoryMain extends StatelessWidget {
  final String screenName = 'History'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}