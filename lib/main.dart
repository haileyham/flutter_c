import 'package:flutter/material.dart'; // 파일 패키지 가져오는 것

void main() {
  runApp(const MyApp()); // main 안에 짜야하고, runApp : 앱 구동 시작 / runApp에 앱 메인페이지 입력하면 됨.
}

// main page 만드는건 아래처럼 하면 되는데, 첫 네줄은 셋팅하는 것(class MyApp ~~~ Wiget build~~~)줄까지
// 실제 코딩은 return에 아래 예로서는 return MaterialApp안에
// flutter에서는 다 위젯으로 구성됨. text, box 등 추가할 때 모두 위젯으로 추가
// 위젯은 대문자로 시작하고 () 소괄호 붙음

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("It's App!"),
            ),
            body: Align( //center 혹은 flex처럼 align안에 container child로 감싸서 정렬 가능
              alignment: Alignment.bottomLeft, // 정렬위치 alignment 사용
                child : Container( //child로 Container
                    width:double.infinity, height:50, margin:EdgeInsets., padding:EdgeInsets.all(5), // width 100%주는것 double.infinity(부모내에서),
                    // margin과 padding은 EdgeInsets.all할 수도 있지만 EdgeInsets.fromLTRB(10, 20, 30, 40)를 통해서 각각 줄 수 있음(왼,위,오,밑)
                    decoration: BoxDecoration( // border 같은 것들 decoration에서 다룸.
                        color:Colors.blue, // 사실 color는 width 등처럼 위에 해도 되는데, decoration을 사용할 경우 중복으로 될 수 없어서 decoration에다가 넣음
                        border: Border.all(color:Colors.black), // border도 이렇게 주고, 참고로 color:Colors s빼먹지 말기
                        borderRadius: BorderRadius.circular(10) // radius 구글링 해봤음 ㅇㅁㅇ 모르면 걍 구글링해보쟈꾸~ 새삼 css 그립넹
                    ),
                    child: Text('hello')
                )
            )
        )
    );
  }
}
