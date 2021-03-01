import 'package:flutter/material.dart';

import '../../header/header_main.dart';

class HistoryMain extends StatelessWidget {
  final String bodyName = 'History'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderMain(),
      body: Center(
        child: Text(bodyName),
      ),
    );
  }
}
