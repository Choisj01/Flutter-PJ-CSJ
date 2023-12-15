void main(List<String> args) {
  // [ 다트의 함수 ]
  // - 특정실행코드를 호출시 실행하기 위한
  // 코드 저장소!
  /* 
    1. 일반함수
    형식 : 
      데이터형 함수명(전달변수){코드구역}
      -데이터형 : 함수에서 값을 리턴할 데이터형
        ->리턴값이 없는 함수는 반드시 void라고 써줘야한다!
      -전달변수 : 데이터형과 함께 변수로 표현

      예) int myFn (int aa){return aa+100;}
      -> 정수형숫자를 받아서 100을 더한 후 int형으로 리턴
   */

  

  showTxt('이순신에 대해 알아볼까요?');
  showTxt('이순신의 마지막 전투는? ${leeFight[2]}${detail[leeFight[2]]}');
  // 이순신 시리지 영화 부제목 찍기
  showTxt(makeSubTit(2));
  showTxt(makeSubTit(1));
  showTxt(makeSubTit(0));
  // 이순신 시리즈 영화 주요 출연자 찍기
  // Set 상수를 List로 형변환하여 함수에 전달!
  showTxt('이순신 시리즈 영화의 주요 출연배우들: ${actorList(actors.toList())}');

} //// main ///////\

// [ 다트의 상수 : final, const ] -> 함수바깥이면 전역변수
  final leeFight = ['명량','한산','노량'];
  const detail = {'명량':'해전','한산':'도대첩','노량':'해전'};
  final subTit = {'명량':null,'한산':'용의 출현','노량':'죽음의 바다'};

  // 이순신 시리즈 영화 출연배우들
  final actors = {
    '박해일',
    '변요한',
    '최민식',
    '안성기',
    '최민식',
    '류승룡',
    '조진웅',
    '최민식',
    '김윤석',
    '김명곤',
    '진구',
    '이정현',
    '김윤석',
    '김윤석',
    '백윤식',
    '김윤석',
    '정재영',
    '허준호',
    '김윤석',
    '김성규',
    '이규형',
    '이무생',
    '최덕문',
    '안보현',
    '박명훈',
    '안보현',
    '박훈',
    '문정희'
  };

// 텍스트찍기 함수
void showTxt(var txt){
  print(txt);
}

// 이순신 시리즈 영화 부제목 찍기 함수
// 리턴값의 형은? String
// 전달값은 List 상수의 순번값을 받음
String makeSubTit(int seq){
  return
  '영화 "${leeFight[seq]}"의 부제목은? "${subTit[leeFight[seq]]??"부제목 없음"}"';
} /// makeSubTit 함수 //////

///// 배우 리스트 찍기 함수 /////////////
String actorList (List list){
  var temp = '';
  // for문 : for(시작값;한계값;증감){코드}
  // 리스트를 순회하는 for문 : for (변수 in 리스트변수){코드}
  for(var x in list){ // x - list의 개별값 순회
  temp += '💂$x ';

  } /////// for문 /////

  return temp;

} ////////// actorList 함수 /////////


// [ 다트의 널 세이프티(Null Safety) ]
  // - 개발자가 null 데이터가 생길 경우 에러를 막기 위한 
  // 조치를 다트언어에서 시스템적으로 처리해주는 기법
  // 1. 널체크 연산자 : ? - null값 여부 체크
  // 2. 널병합 연산자 : ?? - null인 경우 뒤에 쓴 값 출력
