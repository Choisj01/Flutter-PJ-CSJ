// 프로파일 탭 메뉴와 탭 컨텐츠 구현 클래스

// 동적인 컨텐츠 변경이 있는 위젯은 
// 상태위젯을 사용한다 !!! -> statefull Widget
// -> stf 축약어
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}