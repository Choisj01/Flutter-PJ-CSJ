// 카트 페이지 상세구성 클래스
// 버튼 클릭시 변경되는 변수값에 따라
// 이미지와 정보표시가 업데이트되는 상태변경 위젯인
// Stateful 위젯(StatefulWidget)으로 구성한다!!!
//-> 상태변경 반영여부에 따라 stl(Stateless 위젯())이냐 or stf(Stateful 위젯)이냐 나뉨

import 'package:flutter/material.dart';

// 상태관리 위젯 상속한 메인 클래스 ///////////////////
class CartDetail extends StatefulWidget {
  const CartDetail({Key? key}) : super(key: key);

  // 상태관리가 반영되게 하기 위한 재정의(클래스 연결)
  @override
  State<CartDetail> createState() => _CartDetailState();
} ///////////// CartDetail클래스 /////////////////////////

// 상태관리에서 변경부분 반영을 위한 build메서드를
// 분리하여 반영하는 서브 클래스!!!
class _CartDetailState extends State<CartDetail> {
  // 선택된 버튼 순번을 저장하는 변수
  int sequenceNum = 0;
  // ->> 이 클래스 내부에서 선언하여 사용하는 변수의
  // 값이 변경되면 이 변수를 사용하는 위젯이 자동업데이트 된다!

  // 일반값 셋팅 변수
  // 이미지 리스트
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  // 상품명 리스트
  List<String> selectedTit = [
    "Living bicycle",
    "Honda motorcycle",
    "Tesla Model3",
    "Cessna 150",
  ];
  // 상품가격 리스트 [ 가격, 조회수, 별수 ]
  Map<String, List> selectedPrice = {
    "Living bicycle": [699, 26, 5],
    "Honda motorcycle": [1700, 35, 7],
    "Tesla Model3": [7800, 98, 3],
    "Cessna 150": [12400, 75, 6],
  };

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
} //////// _CartDetailState클래스 ///////////
