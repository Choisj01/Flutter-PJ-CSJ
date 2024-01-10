import 'package:app_04_login/pages/home_page.dart';
// 홈페이지
import 'package:flutter/material.dart';
// 로그인페이지
import 'package:app_04_login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

/* 
  [ 로그인 앱 전체구성 : lib폴더하위 ]
  1. 메인 출발(추가 사이즈 지정  size.dart)
    ->>> main.dart에 라우터 속성추가!!!
  2. 페이지 구성 : 2개
    pages/home_page.dart : 홈페이지 
    pages/login_page.dart : 로그인 페이지
  3. 컴포넌트 구성 : 3개
    components/logo.dart : SVG로고
    components/custom_form.dart : Form 위젯
    components/custom_text_form_field.dart : Form 요소 위젯
 */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // [ 테마설정: 공통버튼 테마 ]
      theme: ThemeData(
        // 텍스트버튼테마설정하기
        textButtonTheme: TextButtonThemeData(
          // 버튼 스타일 속성 지정
          style: TextButton.styleFrom(
            // 배경색
            backgroundColor: Colors.black,
            // 글자색
            foregroundColor: Colors.white,
            // 그림자 효과 -> 둥근모서리
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            // 버튼 최소크기 설정
            minimumSize: Size(400, 60),
          ),
        ),
      ),

      // [라우터 속성 셋업하기]
      // 1.첫페이지 라우터 설정(initialRoute속성)
      initialRoute: '/login',
      // 2.기본셋팅법
      // routes:{'/라우터주소' : (context) => 클래스생성자()}
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
      // 3.라우터 호출 이동법 : 서로 다른 페이지에서 호출
      // Navigator.pushNamed(context, '/라우터주소')

      // 라우터를 사용할 경우 home속성을 사용하지 않는다!
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
