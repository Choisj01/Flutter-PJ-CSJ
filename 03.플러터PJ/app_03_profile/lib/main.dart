import 'package:flutter/material.dart';
// 전체테마 파일 불러오기
import 'package:app_03_profile/theme.dart';
// 프로파일 헤더영역 불러오기
import 'package:app_03_profile/components/profile_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 앱 빌드 위젯 재정의!
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 디버그 모드 지우기
      debugShowCheckedModeBanner: false,
      // 테마를 위한 클래스를 만들고 불러오기
      theme: theme(),
      // 메인 홈 지정하기
      home: ProfilePage(),
    );
  }
}

// 프로파일 페이지 구성 클래스 만들기
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  // build 재정의!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 상단 앱바 만들기 함수 호출
      appBar: _buildProfileAppBar(),
      // 본문파트인 바디 구성하기
      body: Column(
        children: [
          // 프로파일 헤더파트 : 인물 사진 및 소개
          ProfileHeader(),

        ],
      ),
    );
  }
}

// 앱바 생성 함수
AppBar _buildProfileAppBar() {
  return AppBar();
}
