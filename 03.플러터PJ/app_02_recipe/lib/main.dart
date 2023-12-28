import 'package:flutter/material.dart';
// 레시피 홈 클래스 페이지 불러오기
import 'package:app_02_recipe/pages/recipe_page.dart';

void main() {
  // 플러터의 출발 메서드!
  runApp(const MyApp());
}

// 초기 호출 클래스는 비상태 위젯을 상속받음!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 머티리얼앱 위젯을 사용하여 디자인한다!
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 머티리얼앱 시작!
      // 디버그 모드 표시 숨기기
      debugShowCheckedModeBanner: false,
      // theme 테마속성 - 앱 전체에 적용하는 속성값들 셋팅
      theme: ThemeData(
        // 전체 폰트 적용하기 :
        // fontFamily속성은 하나의 폰트만 적용됨
        // fontFamilyFallBack 속성이 여러 폰트 적용됨
        // fontFamilyFallBack : [리스트형 폰트명데이터입력]
        fontFamilyFallback: ["Diphylleia", "PatuaOne"],
      ),
      // 레시피 홈 클래스 상단에 import 후 호출!
      home: RecipePage(),
    );
  }
}
