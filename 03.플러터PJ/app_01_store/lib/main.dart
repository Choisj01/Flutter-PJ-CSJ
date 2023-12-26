import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 최상위 위젯 : 전체 틀 잡아줌!
    return const MaterialApp(
      // home에 작성하는 위젯이 실제 이 앱이 표시하는 위젯
      home: StorePage(), // 이 클래스를 아래쪽에 생성함!
    );
  }
}


// StorePage 클래스 만들기!!!////////
// -> 비상태위젯 단축키 : stl
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        // 앱기본 방향시작은 세로방향(Column이다!-Row를 포함한다!)
        child: Column(
          
        ),),
    );
  }
}

