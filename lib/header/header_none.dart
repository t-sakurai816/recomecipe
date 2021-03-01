import 'package:flutter/material.dart';

class HeaderNone extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  HeaderNone({this.headerTitle}); //ヘッダータイトルを変更できるようにする
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false, // 中央寄せを解除
      title: Text(headerTitle),
    );
  }
}
