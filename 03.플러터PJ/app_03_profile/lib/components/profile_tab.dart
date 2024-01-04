// 프로파일 탭 메뉴와 탭 컨텐츠 구현 클래스

// 동적인 컨텐츠 변경이 있는 위젯은
// 상태위젯을 사용한다 !!! -> statefulWidget
// -> stf 축약어
import 'package:flutter/material.dart';

// 탭메뉴 구현 메인클래스 /////////////////////
class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  // 기본적으로 상태관리를 해주는 메서드로 이를 생성함
  // createState() 에 실제 구현코드를 리턴하는 클래스를 연결함
  @override
  State<ProfileTab> createState() => _ProfileTabState();
} //////////////  ProfileTab 클래스 ///////////////

// 실제 탭메뉴 구현 코드를 리턴하는 클래스
class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 다중상속으로 "씽글티커프로바이더스테이트믹스인" 클래스 상속
  // -> 한가지의 애니메이션을 변경시 적용해주는 클래스임!
  // -> 탭메뉴 변경시 컨텐츠를 슬라이딩 애니로 이동해서 보여줌
  // 참고) 다중 애니메이션 정의 클래스는
  // TickerProviderStateMixin 을 상속받아 사용함!

  // 빌드 메서드 재정의!
  @override
  Widget build(BuildContext context) {
    // 컨텐츠 진행방향이 수직이므로 Column() 사용!
    return Column(
      children: [
        // 1. 탭바 메뉴 : _buildTabBar()
        _buildTabBar(),
        // 2. 탭 컨텐츠 영역
        // (확장영역 사용- Expanded) : _buildTabBarView()
        Expanded(child: _buildTabBarView()),
      ],
    );
  } ///// build ///////

  // 탭메뉴를 탭하여 컨텐츠를 변경할 것이므로
  // 탭 컨트롤러가 필요함!!!
  TabController? _tabController;

  // 기존 정의된 탭컨트롤러를 초기화해야함!!!
  @override
  void initState() {
    // 1. 부모 클래스인 State()의 초기화 메서드를 호출함!
    super.initState();
    // 2. 탭컨트롤러 변수에 탭컨트롤러 옵션을 설정하여 할당함!
    _tabController = TabController(length: 2, vsync: this);
    // length 속성 : 사용할 탭개수
    // vsync 속성 : 탭 변경시 탭메뉴와 탭뷰를 연결하는 설정
    // -> this 키워드로 현재 탭자신을 등록함
  } ///// initState 재정의 //////////

  // [1] 탭바 위젯 리턴 메서드 : _buildTabBar()
  Widget _buildTabBar() {
    // 탭바 위젯 리턴 /////
    return TabBar(
      // 반드시 컨트롤러를 연결해줘야함!!!! 중요!!!!!
      controller: _tabController,
      // 탭바안에 탭이 2개!!
      tabs: [
        Tab(
          icon: Icon(
            Icons.photo_camera,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.photo,
          ),
        ),
      ],
    );
  } //////// _buildTabBar 메서드 //////////

  // [2] 탭바뷰 위젯 리턴 메서드 : _buildTabBarView()
  Widget _buildTabBarView() {
    // 탭바뷰 위젯 리턴 ////
    return TabBarView(
      // 반드시 컨트롤러를 연결해줘야함!!!! 중요!!!!!
      controller: _tabController,
      // 탭개수가 2개이므로 2개의 탭바뷰를 구성함!
      children: [
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.yellow,
        ),
      ],
    );
  } //////// _buildTabBar 메서드 //////////
} ///////// _ProfileTabState 클래스 /////////////
