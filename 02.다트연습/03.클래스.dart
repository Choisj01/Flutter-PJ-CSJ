void main(List<String> args) {
  
}

/********************************************************  
  [ 다트의 클래스 ]
  - 정의 : 목적을 가진 프로그램에서 사용하기 위해
  구성요소에 해당하는 변수와 함수로 구성된
  프로그램 단위체!
  특히 클래스 내부의 변수를 속성(멤버)이라고 함! 
  특히 클래스 내부의 함수를 메서드라고 함! 

  형식 : class 키워드를 사용하여 파스칼케이스로 명명함
  class MyClassIsPerfect{
    코드....
  }

 ********************************************************/

 // 멍멍이 클래스
 class  Dog {
  // 클래스 속성들
   String name = "시바견";
   int age = 8;
   String color = "검정색";
   int bite = 100;

   // 클래스 메서드
   void traningDog(){
    bite = bite - 5;
   }
 }

 // 야옹이 클래스
 class Cat{
  // 클래스 속성들
   String name = "먼치킨";
   int age = 5;
   String color = "얼룩색";
   int punch = 100;

    // 클래스 메서드
   void traningCat(){
    punch = punch - 5;
   }
 }