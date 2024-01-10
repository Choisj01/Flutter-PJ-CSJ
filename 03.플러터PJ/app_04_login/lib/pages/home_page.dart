// 홈 페이지 //////////////////

import 'package:flutter/material.dart';

// StatelessWidget 불러오는 단축키 : stl
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        color: Colors.blue,
      ),
    );
  }
}
