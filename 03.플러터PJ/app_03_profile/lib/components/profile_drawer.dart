// 오른쪽에서 들어오는 사이드 박스 드로워 클래스

import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  // 빌드 재정의!
  @override
  Widget build(BuildContext context) {
    // 사이드 박스는 Container로 만들어 준다!
    return Container(
      // 가로크기
      width: 200,
      // 높이값 double.infinity는 높이채우기
      height: double.infinity,
      // 박스 배경색
      color: Colors.orange.shade200,
    );
  }
}