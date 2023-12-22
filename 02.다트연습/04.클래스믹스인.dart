// 다트 클래스 믹스인(다중상속) /////////////

/******************************************************** 
  [ 다트 Mixin 이란? ]
  다중 상속이 필요할 떄 mixin을 사용함!
  mixin은 다른 코드에 더해질 목적으로 만들어진 클래스임!
  with 키워드는 클래스에 mixin 클래스를 사용할때 씀

  형식 : 
  mixin 클래스명{}
  또는
  mixin class 클래스명{}
  -> class 키워드를 안쓰면 믹스인 전용클래스
  -> class 키워드를 쓰면 개별 인스턴스 사용가능함!
  -> 믹스인 전용클래스는 내부 생성자가 없다!
  그래서 인스턴스 생성이 안되는 것임!

  [ 믹스인 사용 클래스 형식 ]
  class 클래스명 with 믹스인클래스,믹스인클래스,...{}

 ********************************************************/
void main(List<String> args) {
  
  // 테슬라 자동차 인스턴스 생성하기!
  Tesla tesla = new Tesla('테슬라','Model 3',6350.0);

  print('전기자동차 회사이름: ${tesla.compName}');
  print('🚗모델명:${tesla.model}');
  print('🚗가격:${tesla.price}만원');
  print('🚗주행거리:${tesla.distance}km');
  print('🚗엔진정보:${tesla.power}마력');
  print('🚗바퀴정보:${tesla.wheelInfo}');
  print('🚗라이트정보:${tesla.luminosity}lux');

  // mixin 키워드만으로 생성된 클래스는 인스턴스화 되는가?
  // Engine eng = Engine(); -> 인스턴스 불가!
  // mixin 키워드만으로 만든 클래스는 부품같은 느낌이다!

  // 믹스인도 되고 인스턴스로 생성도 되려면
  // mixin class 클래스명{} -> 이렇게 생성하면 된다!!!
  Light light = new Light();
  print('개별인스턴스 광도:${light.luminosity}');


  // 컴포지션 방법으로 다른 클래스 사용하기
  // 현대 생성시 k엔진클래스를 내부에 생성함!
  HyunDai hd = HyunDai(K_Engine());
  print('현대차엔진 파워:${hd.k_engine.power}');
  print('현대차엔진 파워:${hd.k_engine.distance}');

} /////////////////////////// main /////////////////////

// 전기자동차 회사인 테슬라의  부품을 조달하도록 믹스인한다!
class Tesla with Engine,Wheel,Light{
  // 회사명
  final String compName;
  // 자동차 모델명
  final String model;
  // 가격
  final double price;
  // 주행거리
  double distance = 480.0;

  // 생성자 - 입력받을 속성값 셋팅!
  Tesla(this.compName,this.model,this.price);
} //////////// Tesla 클래스 ///////////////////////////////

// 믹스인 클래스 : 엔진파트
mixin Engine{
  // 엔진마력
  int power = 5000;
} 

// 믹스인 클래스 : 바퀴
mixin Wheel{
  // 바퀴정보
  String wheelInfo = "광폭4륜구동바퀴";
}

// 믹스인 클래스 : 라이트 파트
mixin class Light { // -> class키워드 사용으로 인스턴스가능!
  // 광도
  double luminosity = 3000.0;
}

// 믹스인 없으면 어떻게 하지? -> 원래는 컴포지션 사용방법!

// 한국 엔진을 현대차에서 사용하게 함(상속방법 아님!)

class K_Engine {
  // 출력
  int power = 8000;
  // 주행거리
  double distance = 500.0;
}

// 현대차 클래스
class HyunDai{
  // 컴포지션 방법 : 
  // 1.내부에 외부클래스 변수형 선언함!
  K_Engine k_engine;
  // 2.생성자에 초기화 등록함!
  HyunDai(this.k_engine);
}