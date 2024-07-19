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
              title: Text("It's App!"), // AppBar에서 title 사용하면 왼쪽 제목
              leading: Icon(Icons.star), // 왼쪽에 넣을 아이콘
              actions: [Icon(Icons.star),Icon(Icons.star),Icon(Icons.star),] // [우측 아이콘들] 리스트
            ),
            body: SizedBox(
              // child: TextButton 할 경우( // TextButton(), IconButton(), ElevatedButton() 택 1
                child: ElevatedButton( // effect 있는 button 할 경우 ElevatedButton
                  child : Text('Button'),
                  onPressed: (){},
                  style:ButtonStyle(), // button design
                )
            )
        )
    );
  }
}
