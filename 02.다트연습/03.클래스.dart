void main(List<String> args) {

  // Dog 클래스 메모리에 생성하기
  // 클래스를 담는 변수의 형은 그 클래스명을 사용한다!
  Dog d1 = Dog();
  print('나의 강아지 종류이름은 ${d1.name}이다!');
  // 클래스의 속성값 업데이트하기 
  d1.name = '닥스훈트';
  print('1년후 나의 새로운 강아지 종류명은 ${d1.name}이다');
  // 중요한 것은 클래스의 속성자체의 정의다!
  // 값은 그것을 사용하는 사용자의 등록에 따라 달라질 수 있다!
  print('내 강아지의 색깔은 ${d1.color}이고 나이는 ${d1.age}살이다!');

  print('훈련1회 실시함! 물기지수 ${d1.traningDog()}%');
  dynamic doit;
  for(var i=0;i<10;i++){
    doit = d1.traningDog();
  }
  print('훈련10회실시함! 물기지수는 $doit%');

  // 다른 변수에 Dog 클래스를 생성하여 사용!
  // 기존 d1과 연결성은 없다!
  Dog d2 = Dog();
  print('나의 사랑하는 강아지 종류는 ${d2.name}이다!');

  ///// 값을 생성시에 초기화하는 Cat 사용하기 ///
  Cat c1 = Cat("코리안숏헤어", 4, '갈색얼룩');
  print('나의 고양이 종은 ${c1.name}이고 나이는 ${c1.age}살, 색깔은 ${c1.color}이다!');

  // c1.name = '이집트고양이'; -> final이면 재할당 불가!
  print('나의 고양이종을 다시 말하면 ${c1.name}이다.');


  // 상속 받은 Cat 찍어보기
  Cat c2 = Cat('페르시안 고양이', 13, "푸른색");
  print('내 고양이는 ${c2.name}이다. 나이는 ${c2.age}살이다. 울음소리는 ${c2.hearSound(c2.species)}한다! 고양이의 성격은 ${c2.character}이다.');






  // 상수 테스트 : const , final
  const aa = "aa";
  // const bb; -> 선언과 동시에 할당해야함!
  final bb; // final은 선언후 처음할당되는 것을 상수화함!
  bb = 'bb';
  // bb = 'bbb'; -> 재할당은 불가함!
  print('${aa} ${bb}');
  // 선언과 할당 분리 특성에 따라 클래스에서 주로 사용됨!
  // -> 클래스에서 const 사용불가!

  
} /////////// main ////////////////



/************************************* 
[ 다트의 클래스 ]
- 정의 : 목적을 가진 프로그램에서 사용하기 위해
구성요소에 해당하는 변수와 함수로 구성된
프로그램 단위체!
특히 클래스 내부의 변수를 속성(멤버)이라고함!
특히 클래스 내부의 함수를 메서드라고 함!

형식: class 키워드를 사용하여 파스칼케이스로 명명함
class MyClassIsPerfect{
  변수선언 및 할당
  생성자메서드(){}
  메서드()
}
-> 변수는 선언만 할 수도 있고 할당까지 할 수 있음
-> 생성자메서드는 클래스를 사용시 가장먼저 호출되는 메서드
-> 개별적인 클래스 구성 메서드를 생성할 수 있음

[ 다트의 클래스 상속 ]
- 부모 클래스의 모든 속성과 메서드를 자식클래스에서
사용코자 할때 기본공유를 하도록 하는 클래스장치
- 상속 설정방법:
  class 클래스명 extends 부모클래스명 {
    구현코드...
  }
-> 만약 부모클래스 맴버필드가 초기화가 필요한 경우
상속받은 클래스 생성시 반드시 부모클래스 생성자를 먼저 호출
하기 때문에 부모 클래스의 값을 먼저 초기화 셋팅해야 함!!!

-> 부모클래스 초기화방법:


*************************************/

// 애완동물 클래스 : 부모클래스
class Pet{
  // 애완동물 종류
  final String species;
  // 성격
  final String character;
  // 먹이종류
  final String food;

  Pet(this.species,this.character,this.food){
    print('부모 Pet 클래스 생성자!');
  }

  // 애완동물 소리정의 메서드
  String hearSound(String sp){
    dynamic retVal;
    switch(sp){
      case '고양이': 
        retVal = '야옹';
        break;
      case '강아지': 
        retVal = '멍멍';
        break;
      case '프래리독': 
        retVal = '흡스캑';
        break;
      default: 
        retVal = '동물소리';
    } /// switch case ////

    // 리턴코드
    return retVal;
  } ///// hearSound 메서드 /////
} ////////// Pet 클래스 ///////////


// 멍멍이 클래스
class Dog{
  // 클래스 속성들
  String name = "시바견";
  int age = 8;
  String color = "검정색";
  // 물기지수
  int bite = 100;

  // 클래스 메서드
  int traningDog(){
    bite = bite - 5;
    // 5%~100% 값한계설정
    if(bite<5) bite = 5;
    else if(bite>100) bite = 100;

    // 리턴값
    return bite;
  }


} //////// Dog 클래스 /////

// 야옹이 클래스 : Pet클래스 상속
class Cat extends Pet{
  // 클래스 속성들
  // 고양이 이름
  final String name;
  // 고양이 년수
  final int age;
  // 고양이 색깔
  final String color;
  int punch=100;

  // 속성들의 값 초기화는 생성하는 코드에서 해준다!
  // 이것을 해주도록 설정하는 메서드는 무조건 실행되는
  // 클래스의 필수 메서드인 생성자 메서드에 해준다!
  // 생성자 메서드는 클래스와 이름이 같음!
  // this키워드 : 클래스 내부 멤버(속성)을 지칭함!
  // 생성자메서드(){} -> 소괄호안에 콤마로 초기값 셋팅함
  // 중괄호를 생략할 수 있음(구현코드가 없다면...)
  // -> 생성자메서드(); 

  // 상속받은 부모 멤버필드 초기화는 
  // 이니셜라이즈(initialize) 키워드 콜론(:)을 사용하여
  // 그 뒤에 super키워드(부모클래스)로 값을 초기화함!
  // super(초기화값들) -> 부모의 생성자 메서드와 동일!
  Cat(this.name,this.age,this.color) : super('고양이', '내성적', '생선'){
    print('Cat 생성자함수 코드구역');
  }

  // 클래스 메서드
  void traningCat(){
    punch = punch - 5;
  }

}