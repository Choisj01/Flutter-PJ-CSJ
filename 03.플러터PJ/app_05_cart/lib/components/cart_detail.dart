// 카트 페이지 상세구성 클래스
// 버튼 클릭시 변경되는 변수값에 따라
// 이미지와 정보표시가 업데이트되는 상태변경 위젯인
// Stateful 위젯(StatefulWidget)으로 구성한다!!!
//-> 상태변경 반영여부에 따라 stl(Stateless 위젯())이냐 or stf(Stateful 위젯)이냐 나뉨

import 'package:app_05_cart/constants.dart';
import 'package:flutter/cupertino.dart';
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

  // 빌드 재정의!!!
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1.상품이미지 : _buildPicture()
        _buildPicture(),
        // 2.선택버튼 : _buildSelector() -> _buildSelectButton()
        _buildSelector(),
        // 3.상품정보 : 상품명+상품가격+별점+리뷰수+색상옵션+버튼
      ],
    );
  }

  // 1.상품이미지 생성 메서드 : _buildPicture()
  Widget _buildPicture() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child:
          // 비율유지 박스내에 이미지를 넣는다!
          AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          // 위에 셋팅된 이미지를 호출!
          // List형 변수의 순번으로 상태변경클래스 내부 변수를
          // 사용하여 이 변수가 업데이트되면 이미지도 변경됨!
          selectedPic[sequenceNum],
          // 비율박스에 이미지 맞게 채움설정
          fit: BoxFit.cover,
        ),
      ),
    );
  } ///// _buildPicture메서드//////////

  // 2.선택버튼 : _buildSelector() ->
  // -> _buildSelectButton() 호출
  Widget _buildSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        // 진행방향 균일간격
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 버튼 4개 생성하기
          _buildSelectButton(0, Icons.directions_bike),
          _buildSelectButton(1, Icons.motorcycle),
          _buildSelectButton(2, CupertinoIcons.car_detailed),
          _buildSelectButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  } /////////// _buildSelector메서드 ///////

  // 선택버튼 만들기 메서드
  Widget _buildSelectButton(int seq, IconData mIcon) {
    // seq변수 : 버튼 클릭시 변경할 순번변수값 셋팅
    // mIcon변수 : 버튼아이콘
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        // 버튼 배경색상은 선택된 것과 일반적인 것으로 구분함
        // 현재 버튼하고 선택버튼 순번과 같으면 엑센트색 넣기
        color: seq == sequenceNum ? kAccentColor : kSecondaryColor,
        // 둥근모서리 셋팅
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(mIcon, color: Colors.black),
        onPressed: () {
          // 여기가 매우 중요함!!
          // 버튼 클릭시 sequenseNum 변수값을 업데이트함
          // 그러면 이 변수를 사용하는 모든 위젯이 업데이트됨!!!
          // 상태변수를 업데이트하는 방법 :
          // -> setState((){업데이트코드})
          setState(() {
            sequenceNum = seq;
          });
        },
      ),
    );
  } ////////////_buildSelectButton메서드//////////
} //////////////// _CartDetailState클래스 ////////////////////
